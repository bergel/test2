tests
testDefault

	| dnd |
	dnd := RTDragAndDroppable new.
	self assert: dnd numberOfHosts equals: 0.
	dnd host: RTElement new.
	dnd host: RTElement new.
	self assert: dnd numberOfHosts equals: 2.