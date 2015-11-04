accessing
y: blockOrSymbol
	self yElement: [ :anElement | blockOrSymbol rtValue: anElement model ]