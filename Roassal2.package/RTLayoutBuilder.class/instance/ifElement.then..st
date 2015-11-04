public - condition
ifElement: blockCondition then: thenLayout
	| oldLayout |
	oldLayout := layout.
	layout := RTConditionalLayout new.
	layout condition: blockCondition.
	layout thenLayout: thenLayout.
	layout elseLayout: oldLayout.
	^ layout