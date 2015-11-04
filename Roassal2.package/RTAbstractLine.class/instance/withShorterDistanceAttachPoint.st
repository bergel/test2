attach point
withShorterDistanceAttachPoint
	| ap |
	ap := RTCircleAttachPoint new.
	self attachPoint: ap.
	^ ap.