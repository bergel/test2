tests
testSimple5

	RTEdgeBuilder new
		view: view;
		fromObjects: #(1 2 3 6);
		connectFrom: #yourself toAll: [ :v | Array with: v + 1 with: v + 2 ].
		
	self assert: view numberOfEdges equals: 8.
