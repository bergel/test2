accessing
group
	"Return all the elements"
	| myGroup |
	myGroup := RTGroup new.
	items do: [ :item | myGroup add: item execute ].
	RTVerticalLineLayout on: myGroup.
	^ myGroup