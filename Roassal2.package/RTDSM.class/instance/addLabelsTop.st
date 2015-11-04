UI
addLabelsTop
	| es lblShape theModel lbl |
	es := self rowAt: 1.
	lblShape := self labelShape.
	es
		do:
			[ :e | 
			theModel := e model value.
			lbl := lblShape elementOn: theModel.
			view add: lbl.
			lbl rotateByDegrees: rotation.
			RTConstraint new
				fix: e;
				movable: lbl;
				outer;
				right;
				top;
				move.
			lbl translateBy: self cellSize negated @ 0 ]