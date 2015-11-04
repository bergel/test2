helpers
number: n
	^ n isNaN 
		ifTrue: ['NaN']
		ifFalse: [ n asFloat asString ]