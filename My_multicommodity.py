__author__ = 'Trappola'

from networkx import nx
from pulp import *
import json
import time
import datetime

import sys

# def common_out_neighbors(g, i, j):
#     return set(g.successors(i)).intersection(g.successors(j))
#
# def common_in_neighbors(g, i, j):
#     return set(g.predecessors(i)).intersection(g.predecessors(j))

network_configuration_file = open("Config/network_configuration.json").read()
network_configuration_parameters = json.loads(network_configuration_file)
num_node_network = network_configuration_parameters["node"]["number"]

# read configuration file with orders parameter for any order of our problem
orders_configuration_file = open("Config/orders_config.json").read()
orders_configuration_parameters = json.loads(orders_configuration_file)
num_max_orders = orders_configuration_parameters["num_max_orders"]

order_file = open("data/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+".json").read()
commodities = json.loads(order_file)

input_folder = "data"
path_random_network = input_folder+"/random_network_NEW_"+str(num_node_network)+".csv"
input_random_network = open(path_random_network)
graph = nx.read_edgelist(input_random_network, delimiter=',', create_using=nx.DiGraph(), nodetype=int, data=(('cost', float), ('capacity', float)))

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
Max_path_lenght_allowed = 10
for h in commodities:
    prob += pulp.lpSum(flow[h, o, d] for o, d, data in graph.edges(data=True)) <= Max_path_lenght_allowed, "Lenght_path_between_(%s,%s)" % (commodities[h]["from"], commodities[h]["to"])

tempo_finale = time.time()
flow = {}
print "FINISH TIME to creation of the model: "+str(datetime.datetime.now())
print "Impiegati", str(tempo_finale - tempo_iniziale), "secondi."
print "########################### WRITE THE LP MODEL ############################"
# The problem data is written to an .lp file
prob.writeLP("LpModel/UMMModel.lp")

print "############################ INIZIO A RISOLVERE IL PROBLEMA ##########################"
# The problem is solved using PuLP's choice of Solver
# prob.solve()
prob.solve(GUROBI_CMD())
# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])
# Each of the variables is printed with it's resolved optimum value
# for v in prob.variables():
#     print(v.name, "=", v.varValue)

# The optimised objective function value is printed to the screen
print("Total Cost of Ingredients per can = ", value(prob.objective))