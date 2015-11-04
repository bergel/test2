hooks
renderIn: aView
	self elements do: #updateShape.
	aView addAll: self elements.
	self layoutElements.
	
	