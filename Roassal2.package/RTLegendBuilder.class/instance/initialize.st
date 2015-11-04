initialization
initialize
	super initialize.
	"Thisi group variable should be removed"
	group := RTGroup new.
	
	offset := self defaultOffset.
	position := #below.
	isOnDemand := false.
	items := OrderedCollection new.