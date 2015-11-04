public
run
	| answer |
	answer := UIManager default confirm: self description label: 'Do you want to load plugin ', self label, '?'.
	answer ifNil: [ ^ self ].
	answer ifTrue: [ self execute ].