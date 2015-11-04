visitor
visitArrowHeadShape: arrowShape
	| e |
	e := arrowShape element.
	stream nextPutAll: '
		{type: "headarrow", id: "';
		nextPutAll: (self nameFor: arrowShape);
		nextPutAll: ('", fromid: <1p>, toid: <2p>,' 
		expandMacrosWith:  (self nameFor: e from trachelShape) with: (self nameFor: e to trachelShape) ).
	self addColor: arrowShape color.
	self addBorderColor: arrowShape strokePaint.
	
	stream nextPutAll: ' width: ', arrowShape width asString;
		nextPutAll: ', size: ', arrowShape mySize asString.
	self visitAttachPoint: e.
	stream nextPutAll: ', base: ', arrowShape baseSize asString;
		nextPutAll: '},'.
	
	