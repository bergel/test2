sources
exampleEbola

	"Preparing the data"
	| tab data b ds |
	tab := RTTabTable new input: (RTGrapherExample new dataEbola readStream) contents usingDelimiter: $,.
	tab removeFirstRow.
	tab replaceEmptyValuesWith: '0' inColumns: #(10 11).
	tab convertColumnsAsInteger: #(10 11).
	tab convertColumnsAsDateAndTime: #(3 4).
	data := tab values reversed.

	"Charting the data"
	b := RTGrapher new.
	b extent: 400 @ 200.

	ds := RTData new.
	ds interaction fixedPopupText: [ :row | row value at: 12 ]. 
	ds dotShape ellipse 
		color: (Color blue alpha: 0.3);
		size: [ :row  | (row at: 11) / 5 ].
	ds points: data.
	ds connectColor: Color blue.
	ds y: [ :r | r at: 10 ].
	ds highlightIf: [ :row | (row at: 10) > 100 ] using: [ :row | row third year ].
	b add: ds. 

	b axisX noLabel; numberOfTicks: tab values size.
	b axisY noDecimal.
	b build.
	^ b view