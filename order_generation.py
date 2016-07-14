__author__ = 'Trappola'

from networkx import nx
import random
import json
import os
import math
import sys

input_folder = "Instances/Networks"
num_node_network = 50
path_random_network = input_folder+"/random_network_"+str(num_node_network)+".csv"
input_random_network = open(path_random_network)
graph = nx.read_edgelist(input_random_network, delimiter=',', create_using=nx.DiGraph(), nodetype=int, data=(('cost', float), ('capacity', float)))

orders_configuration_file = open("Config/orders_config.json").read()
orders_configuration_parameters = json.loads(orders_configuration_file)

# assign orders parameter into variable
min_capacity = orders_configuration_parameters["min_capacity"]              # capacity minima ( = capacity train)
min_len_shortest_path = orders_configuration_parameters["min_len_shortest_path"]   # lunghezza minima shortest path
num_max_orders = orders_configuration_parameters["num_max_orders"]          # numero massimo di ordini, solo se limited_num_orders = true
# limited_num_orders = True   # se = True => vengono salvati al max num_max_orders ordini
unique_sources = orders_configuration_parameters["unique_sources"]          # se = True => i nodi partenza degli ordini saranno tutti diversi
orders_flag = False                                                         # = true se  stato raggiunto il numero di ordini specificato in num_max_orders

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

        if shortest_path_len >= min_len_shortest_path:
            bool_unique_continue = True
            if unique_sources and n1 in sources:
                bool_unique_continue = False
            if bool_unique_continue and node_combined not in node_combined_orders:
                node_combined_orders[node_combined] = None
                sources[n1] = None
                # print str(n1) + " -> " + str(n2) + " - shortest path length: " + str(shortest_path_len)
                order_name = "order_" + str(order_count)
                order_count += 1
                orders[order_name] = {
                    'from': n1,
                    'to': n2,
                    'supply': float(format(random.uniform(1, min_capacity), '.3f'))
                }
    except nx.NetworkXNoPath as e:
        pass
        # print str(n1) + " -> " + str(n2) + " -  no shortest path"

order_file_path = ""

instance_configuration_file = open("Config/instance.json").read()
instance_configuration_parameters = json.loads(instance_configuration_file)

root_folder = "Instances/"
root_folder += instance_configuration_parameters["name"]+str(instance_configuration_parameters["count"])

instance_configuration_parameters["count"] += 1

instance_configuration_file = open("Config/instance.json", "w")
instance_configuration_file.write(json.dumps(instance_configuration_parameters, indent=4))
instance_configuration_file.close()
# Check whether a given directory exists
if not os.path.exists(root_folder):
    os.makedirs(root_folder)

# write network on file basta cambiare qualcosa qui nel path per mettere le cose apposto
out_file = open(root_folder+"/random_network_"+str(num_node_network)+".csv", "w")
# nx.write_edgelist(graph, out_file, delimiter=",", data=True)
nx.write_edgelist(graph, out_file, delimiter=",", data=('cost', 'capacity'))

orders_configuration_file_copy = open(root_folder+"/orders_config.json", "w")
orders_configuration_file_copy.write(json.dumps(orders_configuration_parameters, indent=4))

# assigned the right path
if unique_sources:
    order_file_path = root_folder+"/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+"_unique"+".json"
else:
    order_file_path = root_folder+"/orders_"+str(num_node_network)+"_limited"+str(num_max_orders)+".json"

# write found order into file
orders_file = open(order_file_path, 'w')
orders_file.write(json.dumps(orders, indent=4))

network_configuration_file = open("Config/network_configuration.json").read()
network_configuration_parameters = json.loads(network_configuration_file)

network_configuration_file_copy = open(root_folder+"/network_configuration.json", "w")
network_configuration_file_copy.write(json.dumps(network_configuration_parameters, indent=4))