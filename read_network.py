__author__ = 'Trappola'

from networkx import nx

input_folder = "data"
num_node_network = 10
path_random_network = input_folder+"/random_network_"+str(num_node_network)+".csv"
input_random_network = open(path_random_network)
graph = nx.read_edgelist(input_random_network, delimiter=',', create_using=nx.DiGraph(), nodetype=int, data=(('cost', float), ('capacity', float)))

print graph.nodes()
for u, v, a in graph.edges(data=True):
    print a

try:
    n = nx.shortest_path_length(graph, source=1, target=3)
    print n
except nx.NetworkXNoPath as e:
    print e
    print 'No path'
    # traceback.print_exc()

# 1, 3