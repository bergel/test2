UI
addLabelsLeft
	| es lblShape theModel lbl |
	es := self columnAt: 1.
	lblShape := self labelShape.
	es
		do:
			[ :e | 
			theModel := e model key.
			lbl := lblShape elementOn: theModel.
			view add: lbl.
			RTConstraint new
				fix: e;
				movable: lbl;
				outer;
				left;
				move ]