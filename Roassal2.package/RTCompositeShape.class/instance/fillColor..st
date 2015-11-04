accessing
fillColor: aOneArgBlockOrColorOrSymbol
	shapes ifEmpty: [ self error: 'You first need to add shape before setting the color' ].
	self allShapes do: [ :s | (s isKindOf: RTAbstractElementShape) ifTrue: [ s fillColor: aOneArgBlockOrColorOrSymbol ] ]