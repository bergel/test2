helpers
addColor: c
	stream nextPutAll: ('color: {r: <1p>, g: <2p>, b:<3p>' expandMacrosWith: (c red*255) rounded with: (c green*255) rounded with:  (c blue*255) rounded ).
	c alpha = 1.0 ifTrue: [ stream nextPutAll: '}, ' ]
	ifFalse: [ stream nextPutAll: (', a: <1p>}, ' expandMacrosWith: c alpha) ]