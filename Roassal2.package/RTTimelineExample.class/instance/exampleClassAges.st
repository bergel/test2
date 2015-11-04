sources
exampleClassAges

	| data b s |
	data := (RTShape withAllSubclasses sortedAs: #ageInDaysRounded) select: #hasMethods.

	b := RTTimeline new.
	b extent: 400 @ 600.
	s := RTTimelineSet new.
	s objects: data.
	s start: [ :cls | cls computeYoungestMethod ageInDays ].
	s end: [ :cls | |temp |
		temp := cls computeOldestMethod ageInDays.
		temp isZero ifTrue: [ 1 ] ifFalse: [ 2 ] ].
	b add: s.
	
b build.
^ b view