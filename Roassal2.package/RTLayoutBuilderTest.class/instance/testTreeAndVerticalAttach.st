tests
testTreeAndVerticalAttach

	| e1 e2 edge |
	builder tree.
	e1 := RTBox element.
	e2 := RTBox element.
	edge := RTLine edgeFrom: e1 to: e2.
	builder setUpElements: (Array with: e1 with: e2).

	self assert: edge shape attachPoint class equals: RTVerticalAttachPoint 