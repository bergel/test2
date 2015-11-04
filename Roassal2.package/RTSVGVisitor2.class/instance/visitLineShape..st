visitor
visitLineShape: aLine
	
	| e fromTo |
	e := aLine element.
	e ~= nil ifTrue: [ 
		fromTo := '",fromid:<1p>,toid:<2p>,' 
			expandMacrosWith: (self nameFor: e from trachelShape)
			with: (self nameFor: e to trachelShape) .] ifFalse: [
		fromTo := '", fromid: ',(self pointToString: aLine from),',toid:',(self pointToString: aLine to),','.].
	
	stream nextPutAll: '
		{type: "line", id: "';
		nextPutAll: (self nameFor: aLine);
		nextPutAll: fromTo.
	self addColor: aLine color.
	stream nextPutAll: ' width: ', aLine width asString.
	self visitAttachPoint: e.
	stream nextPutAll: '},'.
	