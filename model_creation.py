__author__ = 'Trappola'

from networkx import nx
from pulp import *
import json
import time
import datetime
import sys

instance_configuration_file = open("Config/read_instance_number.json").read()
instance_configuration_parameters = json.loads(instance_configuration_file)
gurobi_bool = True
# gurobi_bool = False

if gurobi_bool:
    print "################### GUROBI - Instance Number: "+str(instance_configuration_parameters["instance_count"])+" ###################\n\n"
else:
    print "################### CBC - Instance Number: " + str(instance_configuration_parameters["instance_count"]) + " ###################\n\n"

print "################### Instance Number: "+str(instance_configuration_parameters["instance_count"])

instance_folder = "Instances/instance_"+str(instance_configuration_parameters["instance_count"])

network_configuration_file = open(instance_folder+"/network_configuration.json").read()
network_configuration_parameters = json.loads(network_configuration_file)
num_node_network = network_configuration_parameters["node"]["number"]

print "Numero di nodi nella rete: "+ str(num_node_network)

# read configuration file with orders parameter for any order of our problem
orders_configuration_file = open(instance_folder+"/orders_config.json").read()
orders_configuration_parameters = json.loads(orders_configuration_file)
num_max_orders = orders_configuration_parameters["num_max_orders"]

# order_file = open("data/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+".json").read()
order_file = open(instance_folder+"/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+".json").read()
commodities = json.loads(order_file)

path_random_network = instance_folder+"/random_network_"+str(num_node_network)+".csv"
input_random_network = open(path_random_network)
graph = nx.read_edgelist(input_random_network, delimiter=',', create_using=nx.DiGraph(), nodetype=int, data=(('cost', float), ('capacity', float)))

print "Numero di archi nella rete: "+str(len(graph.edges()))
print "Numero di Ordini: "+str(len(commodities))

# Set up and run the multi-commodity flow model using PuLP

print "########################### CREATION OF THE ILP MODEL ############################"
tempo_iniziale = time.time()
print "Start TIME to creation of the model: "+str(datetime.datetime.now())
# Create the 'prob' object to contain the optimization problem data
prob = pulp.LpProblem("Multi-commodity Flow", pulp.LpMinimize)
# Create variables
flow = {}
objFn = []
# Create Objective function and decision variable
for h in commodities:
    for o, d, data in graph.edges(data=True):
        flow[h, o, d] = pulp.LpVariable("flow_%s_%s_%s" % (h, str(o), str(d)), lowBound=0, upBound=1, cat=pulp.LpInteger)
        objFn.append(data['cost']*commodities[h]["supply"]*flow[h, o, d])

# The objective function is added to 'prob' first
# lpSum takes a list of coefficients*LpVariables and makes a summation
prob += pulp.lpSum(objFn), "Total Cost"

# Arc capacity constraints
for o, d, data in graph.edges(data=True):
    prob += pulp.lpSum(commodities[h]["supply"]*flow[h, o, d] for h in commodities) <= data['capacity'], "Arc_Capacity_Constraint_(%s,%s)" % (str(o), str(d))

# Flow conservation constraint
for h in commodities:
    orig = commodities[h]["from"]
    dest = commodities[h]["to"]
    for i in graph.nodes():
        # If i is the orig of the commodity, the net supply is q
        if i == orig:
            netsupply = -1
        elif i == dest:
            netsupply = 1
        else:
            netsupply = 0

        # Create the flow conservation constraint
        prob += pulp.lpSum(flow[h, j, i] for j in graph.predecessors(i)) - pulp.lpSum(flow[h, i, j] for j in graph.successors(i)) == netsupply, "Flow Conservation Constraint Node %s Commodity %s" % (str(i), h)

# Max path constraint
Max_path_lenght_allowed = 20
for h in commodities:
    prob += pulp.lpSum(flow[h, o, d] for o, d, data in graph.edges(data=True)) <= Max_path_lenght_allowed, "Lenght_path_between_(%s,%s)" % (commodities[h]["from"], commodities[h]["to"])

tempo_finale = time.time()

print "FINISH TIME to creation of the model: "+str(datetime.datetime.now())
print "Impiegati", str(tempo_finale - tempo_iniziale), "secondi."
print "########################### WRITE THE LP MODEL ############################"
# The problem data is written to an .lp file
# prob.writeLP(instance_folder+"/UMMModel_"+str(Max_path_lenght_allowed)+".lp")

print "############################ INIZIO A RISOLVERE IL PROBLEMA ##########################"
# The problem is solved using PuLP's choice of Solver
max_time_cbc = 1800
#todo:CBC
if not gurobi_bool:
    prob.solve(pulp.PULP_CBC_CMD(msg=1, maxSeconds=max_time_cbc))
# prob.solve(pulp.COIN_CMD(msg=1))
# prob.solve(pulp.COIN_CMD(msg=1, options=['DivingVectorlength on','DivingSome on']))
max_time_gurobi = 600

#todo:gurobi
if gurobi_bool:
    prob.solve(GUROBI_CMD())
# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])
# Each of the variables is printed with it's resolved optimum value
# for v in prob.variables():
#     print(v.name, "=", v.varValue)

# The optimised objective function value is printed to the screen
print("Total Cost of Ingredients per can = ", value(prob.objective))
