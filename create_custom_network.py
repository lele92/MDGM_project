__author__ = 'Trappola'

from networkx import nx
import random

type_of_transport = ["truck", "train"]

capacity = {"truck": 10,
            "train": 200}

cost = {"truck": {"mean": 20, "variance": 10},
        "train": {"mean": 200, "variance": 100}}

num_node_network = 10
graph = nx.erdos_renyi_graph(num_node_network, 0.2, directed=True)
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