accessing
textColor: aOneArgBlockOrColorOrSymbol
	self allShapes do: [ :s | (s isKindOf: RTLabel) ifTrue: [ s color: aOneArgBlockOrColorOrSymbol ] ]