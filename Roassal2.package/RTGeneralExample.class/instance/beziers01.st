beziers
beziers01

	| v shape  edge els |
	v := RTView new.
	shape := RTEllipse new size: 10; color: (Color purple alpha: 0.3).
	els := (shape elementsOn: (1 to: 6)) @ RTDraggable.
	v addAll: els .
	RTHorizontalLineLayout on: v elements.

	edge := (RTBezierLine new controllingElements: v elements) edgeFrom: els first to: els last.
	v add: edge.

	v open