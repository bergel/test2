public associations
useAssociations: associations
	"associations have to be between model objects"
	
	| edges fromElement toElement |
	edges := RTGroup new.
	associations do: [ :assoc |
		fromElement := self fromElements elementFromModel: assoc key.
		toElement := self toElements elementFromModel: assoc value.
		edges add: (self edgeFrom: fromElement to: toElement) ].
	self moveBehindIfNecessary: edges.
	^ edges