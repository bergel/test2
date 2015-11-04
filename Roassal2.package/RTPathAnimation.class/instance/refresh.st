refreshing
refresh
	| t prev current key position |
	curves ifEmpty: [ ^ self ].
	t := animatedValue value.
	index := (t * curves size) ceiling.
	index <= 0 ifTrue: [ index := 1 ].
	current := self position: index.
	t := (t  - ((index - 1) / curves size)) / (1 / curves size).
	index = 1
		ifTrue: [ prev := element attributes at: #op  ]
		ifFalse: [ prev := self position: index- 1 ].
	key := (curves at: index) key.
	position := nil.
	((key = #m) or: [ key = #l. ])
		ifTrue: [ 
			position := self
				linear: prev
				to: current
				at: t ].
	key = #c
		ifTrue: [ position := self 
			cubic: prev 
			to: current
			at: t
			 ].
	position notNil ifTrue:[
		element translateTo: position.
		during rtValue: element.
		element signalUpdate.
		].
	