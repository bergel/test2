tests
testCallback

	| t c lastAdded v |
	t := 0.
	v := RTView new.
	c := RTOrderedCollection new.
	c viewToUpdate: v.
	c whenAddingDo: [ :object | t := t + 1. lastAdded := object ].
	
	self assert: c isEmpty.
	self assert: t equals: 0.
	c add: 10.
	self assert: c notEmpty.
	self assert: t equals: 1.
	self assert: lastAdded equals: 10.
	
	c addAll: (1 to: 4).
	self assert: t equals: 5.