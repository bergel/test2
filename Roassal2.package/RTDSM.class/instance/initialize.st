initialization
initialize
	"
	:: Void -> RTDSM
	"
	super initialize.
	objects := #().
	dependency := #yourself.
	rotation := self defaultTopLabelRotation.
	wantsLabel := true.
	text := #yourself