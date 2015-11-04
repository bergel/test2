public
offsetNormalFor: anEdge
    "Return the offset in case of multiple edges with the same starting and ending points"
    | indexOfEdge multipleEdges normal |
    multipleEdges := OrderedCollection new.
    multipleEdges addAll: 
        (anEdge to connectedEdges select: [ :e | 
            (e from == anEdge from) and: [ e to == anEdge to ] ]).    

    multipleEdges addAll: 
        (anEdge to connectedEdges select: [ :e | 
            (e to == anEdge from) and: [ e from == anEdge to ] ]).    

	multipleEdges size <= 1 ifTrue: [ ^ 0 @ 0 ].
	indexOfEdge := multipleEdges indexOf: anEdge.
	normal := (anEdge to position - anEdge from position) normal.
	^ (indexOfEdge - 1 - (multipleEdges size / 2)) * offset * normal