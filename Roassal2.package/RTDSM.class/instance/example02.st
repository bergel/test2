examples
example02
	"
	self new example02
	"
	
	| dsm |
	dsm := RTDSM new.
	dsm objects: (1 to: 10).
	dsm dependency: [ :aValue | aValue // 2 ].
	^ dsm