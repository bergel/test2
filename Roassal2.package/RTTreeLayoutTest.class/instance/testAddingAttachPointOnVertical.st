tests
testAddingAttachPointOnVertical
	| v es lineShape l |
	v := RTView new.
	es := RTBox elementsOn: (1 to: 2).
	v addAll: es.
	lineShape := RTLine new.
	l := lineShape edgeFrom: es first to: es second.
	v add: l.
	
	self assert: lineShape attachPoint class equals: RTCenteredAttachPoint.
	RTTreeLayout on: es.
	self assert: lineShape attachPoint class equals: RTVerticalAttachPoint.