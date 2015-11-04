public - shapes
labelledIf: aBlock withBlock: aBlockLabel
	objects do: [ :object |
		(aBlock rtValue: object) ifTrue: [ self label: aBlockLabel withObject: object ] ]