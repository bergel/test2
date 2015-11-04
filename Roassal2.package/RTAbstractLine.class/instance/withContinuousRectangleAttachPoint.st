attach point
withContinuousRectangleAttachPoint
	| ap |
	ap := RTRectangleAttachPoint new.
	self attachPoint: ap.
	^ ap