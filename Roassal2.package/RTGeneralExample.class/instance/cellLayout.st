layout
cellLayout
	"
	self new cellLayout
	"
	| view substrings |
	view := RTView new.
	substrings := (RTCellLayout >> #doExecute:) getSource substrings.
	view addAll: (RTLabel elementsOn: substrings).
	
	RTCellLayout on: view elements.
	view @ RTDraggableView.
	view open