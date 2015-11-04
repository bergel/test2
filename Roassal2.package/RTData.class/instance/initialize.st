initialization
initialize
	"Maybe this can be lazily done"

	super initialize.
	elements := #().
	self stack.
	self y: #yourself.
	self resetMinAndMax.
	self resetShapeBuilderForDot.
	self resetShapeBuilderForBar.
	self resetShapeBuilderForLine.
	self resetInteractionBuilder.
	shouldConnect := false.
	shouldHaveBars := false.
	
	"This offset is used when a stacked bar chart is used. This alignmentOffset may be removed in case the barchart has to be aligned with other data sets, such as line charts."
	alignmentOffset := 1