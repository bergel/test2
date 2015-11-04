as yet unclassified
createShapeBuilder
	| sb |
	sb := super createShapeBuilder.
	sb shape: self defaultCellShape.
	^ sb