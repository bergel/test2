rendering
updateFor: anElement trachelShape: trachelShape
	| ex |
	trachelShape isNil
		ifTrue: [ ^ self ].
	ex := (self widthFor: anElement) @ (self heightFor: anElement).
	trachelShape extent: ex.
	trachelShape color: (self colorFor: anElement).
	trachelShape strokePaint: (self borderColorFor: anElement).
	trachelShape strokeWidth: (self borderWidthFor: anElement).
	trachelShape dashes: self borderStyle style