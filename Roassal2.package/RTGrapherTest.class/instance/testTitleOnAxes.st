test labels
testTitleOnAxes

	| ds labels |
	b := RTGrapher new.
	ds := RTData new.
	ds points: #(1 2).
	b add: ds.

	b axisX noTick; title: 'hello'.
	b axisY noLabel; title: 'world'.
	b build.
	
	labels := b view elements elements select: [ :el | el shape class == RTLabel ].
	self assert: (labels anySatisfy: [ :e | e trachelShape text = 'hello' ]).
	self assert: (labels anySatisfy: [ :e | e trachelShape text = 'world' ]).