private - utility
label: aBlock withObject: anObject
	"Private method"
	| element trachelShape labelPosition lbl |
	element := view elementFromModel: anObject.
	trachelShape := element trachelShape.
	labelPosition := (trachelShape position + ((trachelShape externalRadius + 30)@ 0)) 
						rotateBy: ((trachelShape betaAngle - trachelShape alphaAngle) / 2 + trachelShape alphaAngle) * 3.1415 / 180
						about: trachelShape position.

	lbl := RTLabel elementOn: (aBlock rtValue: anObject) asString.
	view add: lbl.
	"view canvas addShape: lbl."
	lbl trachelShape translateTo: labelPosition