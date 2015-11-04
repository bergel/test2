public
connectFrom: aBlockOrASymbol
	| fromElement aModel |
	self resetCreatedEdges.
	self toElements copy
		do: [ :e | 
			aModel := aBlockOrASymbol rtValue: e model.
			fromElement := self fromElements elementFromModel: aModel.
			fromElement ifNotNil: [ self createEdgeIfNecessaryFrom: fromElement to: e ] ].
	self moveBehindIfNecessary: createdEdges.
	^ createdEdges