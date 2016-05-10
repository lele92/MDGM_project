__author__ = 'Trappola'

from networkx import nx
from pulp import *
import traceback

# def common_out_neighbors(g, i, j):
#     return set(g.successors(i)).intersection(g.successors(j))
#
# def common_in_neighbors(g, i, j):
#     return set(g.predecessors(i)).intersection(g.predecessors(j))

commodities = {'Pencils': {"from": 1,
                           "to": 3,
                           "supply": 10},
               'Pens': {"from": 8,
                        "to": 4,
                        "supply": 10}}

input_folder = "data"
num_node_network = 10
path_random_network = input_folder+"/random_network_"+str(num_node_network)+".csv"
input_random_network = open(path_random_network)
graph = nx.read_edgelist(input_random_network, delimiter=',', create_using=nx.DiGraph(), nodetype=int, data=(('cost', float), ('capacity', float)))


# Set up and run the multi-commodity flow model using PuLP

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

# The problem data is written to an .lp file
prob.writeLP("LpModel/My_first_Multicommodity_Model.lp")
# The problem is solved using PuLP's choice of Solver
prob.solve()
# prob.solve(GUROBI_CMD())
# The status of the solution is printed to the screen
print("Status:", LpStatus[prob.status])
# Each of the variables is printed with it's resolved optimum value
for v in prob.variables():
    print(v.name, "=", v.varValue)

# The optimised objective function value is printed to the screen
print("Total Cost of Ingredients per can = ", value(prob.objective))