examples
example01
	"
	self new example01
	"
	
	| dsm |
	dsm := RTDSM new.
	dsm objects: RTShape withAllSubclasses.
	dsm dependency: #dependentClasses.
	^ dsm