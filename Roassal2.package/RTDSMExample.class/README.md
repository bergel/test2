RTDSMExample new installTitle: 'GivingALabelToEachCell' 
		code:
'
	| dsm |
	dsm := RTDSM new.
	dsm shape box width: 20; height: 20; withText: [:assoc | assoc key + assoc value ].
	dsm objects: (1 to: 10).
	dsm dependency: [ :aValue | aValue // 2 ].
	^ dsm

'