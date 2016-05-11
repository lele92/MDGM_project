__author__ = 'Trappola'

from networkx import nx
import random
import json
import sys

# This is the general file to create the custom network and order from configuration parameters

# read configuration file with network parameter for arc and node
network_configuration_file = open("Config/network_configuration.json").read()
network_configuration_parameters = json.loads(network_configuration_file)

# assign network parameter into variable
type_of_transport = network_configuration_parameters["arc"]["type_of_transport"]
capacity = network_configuration_parameters["arc"]["capacity"]
cost = network_configuration_parameters["arc"]["cost"]
num_node_network = network_configuration_parameters["node"]["number"]
p_linkage_network = network_configuration_parameters["node"]["p"]

# create random network with parameter assign to the nodes
graph = nx.erdos_renyi_graph(num_node_network, p_linkage_network, directed=True)
output_folder = "data"
out_file = open(output_folder+"/random_network_"+str(num_node_network)+".csv", "w")

# assign a type of transport to any arc on the network
for s, d, data in graph.edges(data=True):
    transp = random.choice(type_of_transport)
    data["capacity"] = capacity[transp]
    data["cost"] = cost[transp]["mean"] + random.randint(-cost[transp]["variance"], cost[transp]["variance"])

# write found graph on the file
nx.write_edgelist(graph, out_file, delimiter=",", data=('cost', 'capacity'))

# read configuration file with orders parameter for any order of our problem
orders_configuration_file = open("Config/orders_config.json").read()
orders_configuration_parameters = json.loads(orders_configuration_file)

# assign orders parameter into variable
min_capacity = orders_configuration_parameters["min_capacity"]           # capacity minima ( = capacity truck)
min_len_shortest_path = orders_configuration_parameters["min_len_shortest_path"]   # lunghezza minima shortest path
num_max_orders = orders_configuration_parameters["num_max_orders"]         # numero massimo di ordini, solo se limited_num_orders = true
limited_num_orders = True   # se = True => vengono salvati al max num_max_orders ordini
unique_sources = orders_configuration_parameters["unique_sources"]       # se = True => i nodi partenza degli ordini saranno tutti diversi

nodes = graph.nodes()
orders = []                 # lista di ordini
order_count = 0

# create orders with configuration parameter
for n1 in nodes:
    tmp = list(nodes)
    tmp.remove(n1)
    for n2 in tmp:
        if limited_num_orders and len(orders) == num_max_orders:        # vengono fatti comunque dei cicli inutili, ma pazienza
            break
        try:
            shortest_path_len = nx.shortest_path_length(graph, source=n1, target=n2)
            # print str(n1) + " -> " + str(n2) + " - shortest path length: " + str(shortest_path_len)
            if shortest_path_len >= min_len_shortest_path:
                print str(n1) + " -> " + str(n2) + " - shortest path length: " + str(shortest_path_len)
                order_name = "order_" + str(order_count)
                order_count += 1
                orders.append({
                    order_name: {
                        'from': n1,
                        'to': n2,
                        'supply': random.randint(1, min_capacity)
                    }
                })
                if unique_sources:
                    break
        except nx.NetworkXNoPath as e:
            print str(n1) + " -> " + str(n2) + " -  no shortest path"

order_file_path = ""

# assigned the right path
if limited_num_orders and unique_sources:
    order_file_path = output_folder+"/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+"_unique"+".json"
elif limited_num_orders and not unique_sources:
    order_file_path = output_folder+"/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+".json"
elif not limited_num_orders and unique_sources:
    order_file_path = output_folder+"/orders_"+str(num_node_network)+"_unique"+".json"
else:
    order_file_path = output_folder+"/orders_"+str(num_node_network)+"_complete.json"

# write found order into file
orders_file = open(order_file_path, 'w')
orders_file.write(json.dumps(orders, indent=4))

