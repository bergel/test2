hooks
renderOnDemandIn: aView
	| label myGroup |
	super renderIn: aView.
	RTVerticalLineLayout on: group.

	label := (RTLabel new color: Color red) elementOn: '?'.
	label setAsFixed.
	label @ RTHighlightable.
	aView add: label.
	label translateTo: label extent / 2.
	label @ (RTPopup new
					alphaPopupBackground: 0.8;
					background: Color white
					group: [ :gg :el | 
					 	 	myGroup := self group.
							
							gg addAll: (myGroup flatCollect: #yourself).
					]).
	