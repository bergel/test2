RTExperimentalExample new installTitle: 'ClusterBezierAndSlider' 
		code:
		' 
classes := Collection withAllSubclasses, TRTest withAllSubclasses.
b := RTMondrian new.
b shape circle.
b nodes: classes.
b shape line color: Color green.
b edges connectFrom: #superclass.

bezier := RTBezierLine new follow: #superclass; tension: 0.5.
b shape shape: bezier;
	color: (Color blue alpha: 0.5).
b edges notUseInLayout;
	connectToAll: [:cls | cls dependentClasses asOrderedCollection remove: cls ifAbsent: []; yourself ].
b layout cluster.
b build.
center := b view elements encompassingRectangle center.

(b view elements select: [ :e | e model subclasses isEmpty ]) do: [:e |
	lbl := RTLabel new elementOn: e model.
	b view add: lbl.
	angle := (e position - center ) theta.
	lbl translateTo: e position+((lbl width/2) * (angle cos @ angle sin)).
	angle := angle radiansToDegrees.
	angle := angle +  ((angle between: 90 and: 270)  ifTrue: [ 180 ] ifFalse: [ 0 ]).
	lbl rotateByDegrees:angle .
	].

edges := b view edges select: [:e | e shape = bezier ].
slider := RTSlider new.
shape := RTCompositeShape new 
	add: (RTEllipse new size: 30; color: Color blue; borderWidth: 0.01; borderColor: Color black);
	add: (RTEllipse new width: 24; height: 19.5;
		color: (LinearGradientPaint new
			start: 0@ -0.5; stop: 0@0.4;
			colorRamp: { 0.0 -> (Color white alpha: 0.6). 1.0 -> Color transparent } )) translateBy: 0@ -3.9;
	add: (RTArc new innerRadius: 12.9; externalRadius: 13.8; alphaAngle: 200; betaAngle: 340;
		color: (LinearGradientPaint new
			start: 0@ 7.0; stop: 0@12.0;
			colorRamp: { 0.0-> Color transparent. 1.0 -> (Color white alpha: 0.6) } )).
slider shape shape: shape. 
slider moveBelow; view: b view; callback: [:v| 
	bezier tension: v.
	edges do: [ :e | e trachelShape points: (bezier getListOfPointsForTrachel: e); resetPath.].
	
	].
slider build.

^ b view
	'