sources
exampleMorphSubclasses

	| b |
	b := RTSunburstBuilder new.
	b strategy: (RTSunburstExtentStrategy new extent: 800@800).
	b shape colorElement: [ :el | el model subclasses isEmpty ifTrue: [ Color purple ] ifFalse: [ Color lightGray ] ].

	b explore: TRPlatform current morphClass using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view