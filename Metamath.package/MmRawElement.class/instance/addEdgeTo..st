adding
addEdgeTo: anElement 

| edge |


edge := GtGraphEdge connecting: self to: anElement .
self constraints graph addConnectedEdge: edge.
anElement constraints graph addConnectedEdge: edge.