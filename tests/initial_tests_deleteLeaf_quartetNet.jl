# Initial tests to see if deleteLeaf works
# as expected with QuartetNetwork type
# Claudia November 2014

include("../bad_triangle_example.jl")
include("../case_f_example.jl")
qnet = QuartetNetwork(net);
printEdges(qnet)
printNodes(qnet)
printEdges(net)
qnet.hasEdge


# bad triangle
deleteLeaf!(qnet,qnet.node[8])
deleteLeaf!(qnet,qnet.node[7])
deleteLeaf!(qnet,qnet.node[5])
deleteLeaf!(qnet,qnet.node[6])
deleteLeaf!(qnet,qnet.node[1])

# bad diamond
deleteLeaf!(qnet,qnet.node[10])
deleteLeaf!(qnet,qnet.node[8])
deleteLeaf!(qnet,qnet.node[6])
deleteLeaf!(qnet,qnet.node[7])

# Case G : no simplification in deleteLeaf!
include("case_g_example.jl")

qnet = QuartetNetwork(net);
printEdges(qnet)
printNodes(qnet)

deleteLeaf!(qnet,qnet.node[10]) # 8
deleteLeaf!(qnet,qnet.node[7]) # 7
deleteLeaf!(qnet,qnet.node[4]) # 4
deleteLeaf!(qnet,qnet.node[2]) # 2
deleteLeaf!(qnet,qnet.node[1]) # 1




# test extractQuartet -------------------

include("../bad_triangle_example.jl")
q1 = Quartet(1,["6","7","1","8"],[0.5,0.4,0.1]);
qnet = extractQuartet(net,q1);
printEdges(qnet)
printNodes(qnet)
qnet.hasEdge

include("../bad_triangle_example.jl")
qnet = extractQuartet(net,net.node[6],net.node[7],net.node[1],net.node[8]);
printEdges(qnet)
printNodes(qnet)
qnet.hasEdge

include("../case_f_example.jl")


# bad triangle
qnet=QuartetNetwork(net);
printEdges(qnet)
printNodes(qnet)
deleteLeaf!(qnet,qnet.node[8])
deleteLeaf!(qnet,qnet.node[7])
deleteLeaf!(qnet,qnet.node[5])
deleteLeaf!(qnet,qnet.node[6])
deleteLeaf!(qnet,qnet.node[1])

# bad diamond
deleteLeaf!(qnet,qnet.node[10])
deleteLeaf!(qnet,qnet.node[8])
