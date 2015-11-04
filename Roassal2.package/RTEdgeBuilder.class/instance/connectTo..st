public
connectTo: aBlockOrASymbol
	"Should this method use connectFrom:To: ?????"
	| toElement |
	self resetCreatedEdges.
	self fromElements copy do: [ :e | 
		toElement := self toElements elementFromModel: (aBlockOrASymbol rtValue: e model).
		toElement ifNotNil: [ 
			self createEdgeIfNecessaryFrom: e to: toElement ] ].
	self moveBehindIfNecessary: createdEdges.
	^ createdEdges