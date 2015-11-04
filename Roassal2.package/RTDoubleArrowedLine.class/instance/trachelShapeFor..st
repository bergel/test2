public
trachelShapeFor: anEdge
	| lineTrachelShape headStartTrachelShape headEndTrachelShape |
	lineTrachelShape := line trachelShapeFor: anEdge.
	headStartTrachelShape := headStart trachelShapeFor: anEdge.
	headEndTrachelShape := headEnd trachelShapeFor: anEdge.
	^ TRCompositeShape new 
			addShape: lineTrachelShape; 
			addShape: headStartTrachelShape; 
			addShape: headEndTrachelShape;
			yourself
	