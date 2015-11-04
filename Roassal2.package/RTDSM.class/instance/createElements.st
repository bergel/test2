UI
createElements
	"
	:: Void -> RTDSM
	var shape : RTShape
	var e : RTElement
	var anObject1 : Object
	var index1 : Number
	var anObject2 : Object
	var index2 : Number
	var evt : TREvent
	var elements : Collection
	var objects : Collection
	"
	| e |
	elements := RTGroup new.
	objects copy
		doWithIndex:
			[ :anObject1 :index1 | 
			objects copy
				doWithIndex:
					[ :anObject2 :index2 | 
					e := self elementOn: anObject1 -> anObject2.
					e @ RTPopup.
					e when: TRMouseEnter do: [ :evt | 
						self highlightColumn: (evt element attributeAt: #matrixIndex) x.
						self highlightRow: (evt element attributeAt: #matrixIndex) y.
						 ].
					e when: TRMouseLeave do: [ :evt | 
						self unhighlightColumn: (evt element attributeAt: #matrixIndex) x.
						self unhighlightRow: (evt element attributeAt: #matrixIndex) y.
						 ].
					
					e attributeAt: #matrixIndex put: index2 @ index1.
					elements add: e ] ].
