accessing
x: blockOrSymbol
	self xElement: [ :anElement | blockOrSymbol rtValue: anElement model ]