hooks
execute
	"Associate a color with a text"
	| g |
	g := RTGroup new.
	g add: (RTBox new height: 3; width: 10; color: color) element.
	g add: (RTLabel elementOn: text).
	RTHorizontalLineLayout new alignCenter; on: g.
	^ g