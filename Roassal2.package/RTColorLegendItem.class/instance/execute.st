hooks
execute
	"Associate a color with a text"
	| g |
	g := RTGroup new.
	g add: (RTBox new size: 10; color: color) element.
	g add: ((RTLabel text: text) elementOn: model).
	RTHorizontalLineLayout new alignCenter; on: g.
	^ g