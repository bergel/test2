sources
exampleVisualizingSoftwareWithBeziers
	| v inheritanceEdges shape helpBar1 helpBar2 elements eb |
	v := RTView new.
	shape := RTEllipse new
		color: (Color red alpha: 0.4);
		size: [ :e | e numberOfMethods / 5 max: 5 ].
	elements := shape elementsOn: Collection withAllSubclasses.
	elements @ RTPopup @ RTDraggable.
	v addAll: elements.

	"Defining edges from inheritance"
	inheritanceEdges := RTEdgeBuilder new
		view: v;
		objects: Collection withAllSubclasses;
		connectFrom: #superclass to: #yourself.

	"Layout the whole thing"
	RTForceBasedLayout new on: v elements edges: inheritanceEdges.
	"userDefinedEdges: inheritanceEdges;"

	"Defining edges from dependencies"
	Collection withAllSubclasses
		do:
			[ :cls | 
			cls rtmethods
				do:
					[ :cm | 
					((cm literals
						select: [ :l | l class == Association and: [ l value notNil ] ])
						collect: #value)
						do:
							[ :depClass | 
							(cls ~~ depClass
								and: [ Collection withAllSubclasses includes: depClass ])
								ifTrue:
									[ 
									eb := RTEdgeBuilder new.
									eb view: v.
									eb shape
										bezierLineFollowing: #superclass;
										color: (Color blue alpha: 0.1).
									eb useAssociations: (Array with: cls -> depClass) ] ] ] ].
	helpBar1 := TRLabelShape new
		text:
			'Circle = classes, size = number of methods; gray links = inheritance;'.
	helpBar2 := TRLabelShape new
		text:
			'blue links = dependencies; layout = force based layout on the inheritance links'.
	v canvas addFixedShape: helpBar1.
	v canvas addFixedShape: helpBar2.
	TRConstraint stick: helpBar1 above: helpBar2.
	TRConstraint stickAtTheBottomOfTheWindow: helpBar2.
	^ v