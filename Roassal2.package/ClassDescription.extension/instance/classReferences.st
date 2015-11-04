*roassal2
classReferences
	"Return the list of class references all my methods contains. The result also contains my superclass."
	| references |
	references := OrderedCollection new.
	self methodDict valuesDo: [ :compiledMethod |
			references addAll: compiledMethod classReferences ].
	references add: self superclass.
	^ references removeDuplicates