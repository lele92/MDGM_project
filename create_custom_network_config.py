# -*- coding: utf-8 -*-
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

# create the random network where links rapresent truck link of the overall network
graph = nx.erdos_renyi_graph(num_node_network, p_linkage_network, directed=True)
output_folder = "data"

# assign to the random network edges the cost and capacity value of the truck
for s, d, data in graph.edges(data=True):
    data["capacity"] = type_of_transport["truck"]["capacity"]
    data["cost"] = type_of_transport["truck"]["cost"]["mean"] + random.randint(-type_of_transport["truck"]["cost"]["variance"], type_of_transport["truck"]["cost"]["variance"])

largest_component = max(nx.weakly_connected_component_subgraphs(graph), key=len)
print "Length of the largest connected component: "+str(len(largest_component))
print "Number of edges: "+str(len(largest_component.edges()))
print "Number of nodes: "+str(len(largest_component.nodes()))

diameter = 0
nodes = largest_component.nodes()
# found the diameter of the directed network of truck
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

print "Diameter: "+str(diameter)

arc_train_count = 0
distance_for_train = math.ceil(float(diameter*percentage_of_diameter_train_link)/float(100))
num_arc_train = math.ceil(float(len(largest_component.edges())*percentage_train)/float(100))

train_graph = nx.DiGraph()

print "num_arc_train " + str(num_arc_train)
print "distance for arct Train " + str(distance_for_train)
arc_train_node_combined = {}
# create train network inside the random network of truck
while arc_train_count < num_arc_train:
    n1 = random.choice(nodes)
    tmp = list(nodes)
    tmp.remove(n1)
    n2 = random.choice(tmp)
    node_combined = str(n1)+","+str(n2)
    try:
        shortest_path_len = nx.shortest_path_length(graph, source=n1, target=n2)
        if shortest_path_len >= distance_for_train and node_combined not in arc_train_node_combined:
            arc_train_node_combined[node_combined] = None
            arc_train_count += 1
            arc_data = {
                "capacity": type_of_transport["train"]["capacity"],
                "cost": type_of_transport["train"]["cost"]["mean"] + random.randint(-type_of_transport["train"]["cost"]["variance"], type_of_transport["train"]["cost"]["variance"])
            }

            train_graph.add_edge(n1, n2, arc_data)
            print "I create a new train arc from node: " + str(n1) + " to node -> " + str(n2) + "with shortest path length: "+str(shortest_path_len)

    except nx.NetworkXNoPath as e:
        pass
        print str(n1) + " -> " + str(n2) + " -  no shortest path"

# add train network inside truck network
for o, d, data in train_graph.edges(data=True):
    print "ciao bel inserisco un arco ;)"
    largest_component.add_edge(o, d, data)
# write network on file
out_file = open(output_folder+"/random_network_NEW_"+str(num_node_network)+".csv", "w")
# nx.write_edgelist(graph, out_file, delimiter=",", data=True)
nx.write_edgelist(largest_component, out_file, delimiter=",", data=('cost', 'capacity'))

################### FINISH OF THE CONSTRUCTION OF THE NETWORK ###########################
print "################### FINISH OF THE CONSTRUCTION OF THE NETWORK ###########################"

# sys.exit()
# read configuration file with orders parameter for any order of our problem
orders_configuration_file = open("Config/orders_config.json").read()
orders_configuration_parameters = json.loads(orders_configuration_file)

# assign orders parameter into variable
min_capacity = orders_configuration_parameters["min_capacity"]              # capacity minima ( = capacity truck)
min_len_shortest_path = orders_configuration_parameters["min_len_shortest_path"]   # lunghezza minima shortest path
num_max_orders = orders_configuration_parameters["num_max_orders"]          # numero massimo di ordini, solo se limited_num_orders = true
# limited_num_orders = True   # se = True => vengono salvati al max num_max_orders ordini
unique_sources = orders_configuration_parameters["unique_sources"]          # se = True => i nodi partenza degli ordini saranno tutti diversi
orders_flag = False                                                         # = true se è stato raggiunto il numero di ordini specificato in num_max_orders

nodes = graph.nodes()
orders = {}                                                                 # lista di ordini
order_count = 0
node_combined_orders = {}
sources = {}

# create orders with configuration parameter
while order_count < num_max_orders:
    n1 = random.choice(nodes)
    tmp = list(nodes)
    tmp.remove(n1)
    n2 = random.choice(tmp)
    node_combined = str(n1)+","+str(n2)
    try:
        shortest_path_len = nx.shortest_path_length(graph, source=n1, target=n2)

        # if shortest_path_len >= min_len_shortest_path:
        bool_unique_continue = True
        if unique_sources and n1 in sources:
            bool_unique_continue = False
        if bool_unique_continue and node_combined not in node_combined_orders:
            node_combined_orders[node_combined] = None
            sources[n1] = None
            print str(n1) + " -> " + str(n2) + " - shortest path length: " + str(shortest_path_len)
            order_name = "order_" + str(order_count)
            order_count += 1
            orders[order_name] = {
                'from': n1,
                'to': n2,
                'supply': random.randint(1, min_capacity)
            }
    except nx.NetworkXNoPath as e:
        pass
        # print str(n1) + " -> " + str(n2) + " -  no shortest path"

order_file_path = ""

# assigned the right path
if unique_sources:
    order_file_path = output_folder+"/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+"_unique"+".json"
else:
    order_file_path = output_folder+"/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+".json"

# write found order into file
orders_file = open(order_file_path, 'w')
orders_file.write(json.dumps(orders, indent=4))

