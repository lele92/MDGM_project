__author__ = 'Trappola'

from networkx import nx
import random
import json
import math
import sys

network_configuration_file = open("Config/network_configuration.json").read()
network_configuration_parameters = json.loads(network_configuration_file)

type_of_transport = {
    "truck": {
        "capacity": 0,
        "cost": {}
    },
    "train": {
        "capacity": 0,
        "cost": {}
    }
}
type_of_transport["truck"]["capacity"] = network_configuration_parameters["capacity_truck"]
type_of_transport["truck"]["cost"] = network_configuration_parameters["cost_truck"]

# create cost for train based on truck cost(mean and variance) multiply with a configuration factor
multiplicateFactorCostTrain = network_configuration_parameters["multiplicateFactorCostTrain"]
train_cost = {
    "mean": type_of_transport["truck"]["cost"]["mean"]*multiplicateFactorCostTrain,
    "variance": type_of_transport["truck"]["cost"]["variance"]*multiplicateFactorCostTrain
}
type_of_transport["train"]["cost"] = train_cost

# create capacity for train based on truck capacity multiply with a configuration factor
multiplicateFactorCapacityTrain = network_configuration_parameters["multiplicateFactorCapacityTrain"]
type_of_transport["train"]["capacity"] = type_of_transport["truck"]["capacity"]*multiplicateFactorCapacityTrain

percentage_train = network_configuration_parameters["percentage_train"]
percentage_of_diameter_train_link = network_configuration_parameters["percentage_of_diameter_train_link"]
# read parameter in order to create the random network of truck
num_node_network = network_configuration_parameters["node"]["number"]
p_linkage_network = network_configuration_parameters["node"]["p"]

# sys.exit()

# create the random network where links rapresent truck link of the overall network
graph = nx.erdos_renyi_graph(num_node_network, p_linkage_network, directed=True)
output_folder = "data"


# assign to the random network edges the cost and capacity value of the truck
for s, d, data in graph.edges(data=True):
    # transp = random.choice(type_of_transport)
    data["capacity"] = type_of_transport["truck"]["capacity"]
    data["cost"] = type_of_transport["truck"]["cost"]["mean"] + random.randint(-type_of_transport["truck"]["cost"]["variance"], type_of_transport["truck"]["cost"]["variance"])

largest_component = max(nx.weakly_connected_component_subgraphs(graph), key=len)
print len(largest_component)
print len(graph.edges())
# diameter = nx.diameter(largest)
nodes = largest_component.nodes()
print len(nodes)
# print diameter
diameter = 0
# create train arcs inside the random network of truck
for n1 in nodes:
    tmp = list(nodes)
    tmp.remove(n1)
    for n2 in tmp:
        try:
            shortest_path_len = nx.shortest_path_length(largest_component, source=n1, target=n2)
            if shortest_path_len > diameter:
                diameter = shortest_path_len
                print str(n1) + " -> " + str(n2) + " - shortest path length: " + str(shortest_path_len)
        except nx.NetworkXNoPath as e:
            pass
            # print str(n1) + " -> " + str(n2) + " -  no shortest path"
print diameter
# sys.exit()
arc_train = []
arc_train_count = 0
distance_for_train = math.ceil(float(diameter*percentage_of_diameter_train_link)/float(100))
num_arc_train = math.ceil(float(len(largest_component.edges())*percentage_train)/float(100))
unique_sources = True

train_graph = nx.DiGraph()
print "num_arc_train " + str(num_arc_train)
print distance_for_train
# create train arcs inside the random network of truck
while len(arc_train) < num_arc_train:
    n1 = random.choice(nodes)
    # print n1
    tmp = list(nodes)
    tmp.remove(n1)
    n2 = random.choice(tmp)
    try:
        shortest_path_len = nx.shortest_path_length(graph, source=n1, target=n2)
        # print str(n1) + " -> " + str(n2) + " - shortest path length: " + str(shortest_path_len)
        if shortest_path_len >= distance_for_train:
            print str(n1) + " -> " + str(n2) + " - shortest path length: " + str(shortest_path_len)

            arc_train_count += 1
            arc_data = {}
            arc_data["capacity"] = type_of_transport["train"]["capacity"]
            arc_data["cost"] = type_of_transport["train"]["cost"]["mean"] + random.randint(-type_of_transport["train"]["cost"]["variance"], type_of_transport["train"]["cost"]["variance"])
            tmp_arc_train = {}
            tmp_arc_train["start"] = n1
            tmp_arc_train["dest"] = n2
            tmp_arc_train["data"] = arc_data
            # train_graph.add_node(n1)
            # train_graph.add_node(n2)
            train_graph.add_edge(n1, n2, arc_data)
            print "sto aggiungendo un arco treno Yuppiiiiiii"
            arc_train.append(tmp_arc_train)
            # if unique_sources:
            #     break
    except nx.NetworkXNoPath as e:
        pass
        print str(n1) + " -> " + str(n2) + " -  no shortest path"

for o, d, data in train_graph.edges(data=True):
    print "ciao bel inserisco un arco ;)"
    largest_component.add_edge(o, d, data)
# write network on file
out_file = open(output_folder+"/random_network_NEW_"+str(num_node_network)+".csv", "w")
# nx.write_edgelist(graph, out_file, delimiter=",", data=True)
nx.write_edgelist(largest_component, out_file, delimiter=",", data=('cost', 'capacity'))

# for path in nx.all_simple_paths(graph, source=1, target=5):
#     print(path)