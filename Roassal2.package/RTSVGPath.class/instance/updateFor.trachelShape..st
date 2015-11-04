hooks
updateFor: anElement trachelShape: trShape
	trShape isNil
		ifTrue: [ ^ self ].
	trShape strokePaint: (borderColor rtValue: anElement).
	trShape borderWidth: (borderWidth rtValue: anElement).
	trShape fillColor: (self fillColor rtValue: anElement).
	keepInOriginalPosition
		ifTrue: [ trShape path: (path rtValue: anElement) ]
		ifFalse: [ trShape centeredPath: (path rtValue: anElement) ].
	trShape scaleBy: (self scaleFor: anElement).
	rotation isNil
		ifFalse: [ trShape rotateByDegrees: rotation ].
	trShape resetPath