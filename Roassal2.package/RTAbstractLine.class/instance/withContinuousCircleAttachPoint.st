attach point
withContinuousCircleAttachPoint
	| ap |
	ap := RTCircleAttachPoint new.
	self attachPoint: ap.
	^ ap