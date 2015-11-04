public using source
source: objects connectFrom: fromblock to: toBlock
	"Define some edges from objects that are not part of the view
	
nbOfNodes := 40.
nbOfRandomEdges := 40.

nodes := 1 to: nbOfNodes.
edges := (1 to: nbOfRandomEdges) 
				collect: [ :notUsed | nodes atRandom -> nodes atRandom ].

b := RTMondrian new.

b shape circle color: (Color black alpha: 0.5).
b nodes: nodes.

b shape line color: (Color gray alpha: 0.3).
b edges
	source: edges connectFrom: #key to: #value.

b layout force.
b
	"
	| assocs |
	assocs := objects collect: [ :o | (fromblock rtValue: o) -> (toBlock rtValue: o) ].
	^ self useAssociations: assocs