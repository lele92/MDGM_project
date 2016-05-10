__author__ = 'Trappola'

from networkx import nx
import random
import json
import sys

network_configuration_file = open("Config/network_configuration.json").read()
network_configuration_parameters = json.loads(network_configuration_file)

type_of_transport = network_configuration_parameters["arc"]["type_of_transport"]
capacity = network_configuration_parameters["arc"]["capacity"]
cost = network_configuration_parameters["arc"]["cost"]
num_node_network = network_configuration_parameters["node"]["number"]
p_linkage_network = network_configuration_parameters["node"]["p"]

# sys.exit()
graph = nx.erdos_renyi_graph(num_node_network, p_linkage_network, directed=True)
output_folder = "data"
out_file = open(output_folder+"/random_network_"+str(num_node_network)+".csv", "w")

for s, d, data in graph.edges(data=True):
    transp = random.choice(type_of_transport)
    data["capacity"] = capacity[transp]
    data["cost"] = cost[transp]["mean"] + random.randint(-cost[transp]["variance"], cost[transp]["variance"])

# nx.write_edgelist(graph, out_file, delimiter=",", data=True)
nx.write_edgelist(graph, out_file, delimiter=",", data=('cost', 'capacity'))

# for path in nx.all_simple_paths(graph, source=1, target=5):
#     print(path)