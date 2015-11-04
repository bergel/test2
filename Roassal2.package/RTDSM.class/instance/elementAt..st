accessing
elementAt: aPoint
	"Return the element at position aPoint"
	^ elements at: (self numberOfObjects) * (aPoint y - 1) + aPoint x