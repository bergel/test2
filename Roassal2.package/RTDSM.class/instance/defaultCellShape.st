UI
defaultCellShape
	^ RTBox new
		size: self cellSize;
		color:
				[ :assoc | 
			(self isAssocDependent: assoc)
				ifTrue: [ self colorForDependency ]
				ifFalse: [ self colorForNonDependency ] ]