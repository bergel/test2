running
testStickToTheCenter

	RTConstraint new
		fix: shape2;
		movable: shape1;
		center;
		stick.
		
	self assert: shape1 center = (0 @ 0).
	self assert: shape2 center = (0 @ 0).

	shape2 translateBy: 10 @ 15.
	self assert: shape1 center = (10 @ 15).
	self assert: shape2 center = (10 @ 15).
