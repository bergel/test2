importing
codeForVisualWorks
	"
	Transcript open.
self new packages do: [ :pkg|
	pkg value do: [ :tag| 
		Transcript show: 'm1 add: ''',pkg key, '-',tag, '''.'; cr  ] ].
	"
	"
| map b btests bexamples classes p cat m1 currentB |
m1 := OrderedCollection new.

m1 add: 'Trachel-Callbacks'.
m1 add: 'Trachel-Core'.
m1 add: 'Trachel-Events'.
m1 add: 'Trachel-Shapes'.
m1 add: 'Trachel-ShapesForArrow'.
m1 add: 'Trachel-Tests'.
m1 add: 'Trachel-Viva'.
m1 add: 'Roassal2-Animation'.
m1 add: 'Roassal2-AttachPoint'.
m1 add: 'Roassal2-AttachPoint-Tests'.
m1 add: 'Roassal2-Builder-AnimatedScatterPlot'.
m1 add: 'Roassal2-Builder-ApplicationMatrix'.
m1 add: 'Roassal2-Builder-AxisAdapted'.
m1 add: 'Roassal2-Builder-BoxPlot'.
m1 add: 'Roassal2-Builder-Calendar'.
m1 add: 'Roassal2-Builder-CircularMap'.
m1 add: 'Roassal2-Builder-Common'.
m1 add: 'Roassal2-Builder-Composer'.
m1 add: 'Roassal2-Builder-DSM'.
m1 add: 'Roassal2-Builder-Explora'.
m1 add: 'Roassal2-Builder-Grapher-Core'.
m1 add: 'Roassal2-Builder-Grapher-Decorators'.
m1 add: 'Roassal2-Builder-Grapher-Decorators-Tests'.
m1 add: 'Roassal2-Builder-Grapher-Labeling'.
m1 add: 'Roassal2-Builder-Grapher-Obsolete'.
m1 add: 'Roassal2-Builder-Grapher-Tests'.
m1 add: 'Roassal2-Builder-Kiviat'.
m1 add: 'Roassal2-Builder-Legend'.
m1 add: 'Roassal2-Builder-Map'.
m1 add: 'Roassal2-Builder-Map-Tests'.
m1 add: 'Roassal2-Builder-Menu'.
m1 add: 'Roassal2-Builder-Mondrian'.
m1 add: 'Roassal2-Builder-MondrianOLD'.
m1 add: 'Roassal2-Builder-NameCloud'.
m1 add: 'Roassal2-Builder-PieChart'.
m1 add: 'Roassal2-Builder-ScatterplotMap'.
m1 add: 'Roassal2-Builder-ScrollBar'.
m1 add: 'Roassal2-Builder-SimilarityMatrix'.
m1 add: 'Roassal2-Builder-Simon'.
m1 add: 'Roassal2-Builder-Spectrograph'.
m1 add: 'Roassal2-Builder-StackBarPlot'.
m1 add: 'Roassal2-Builder-StructureMatrix'.
m1 add: 'Roassal2-Builder-Sunburst'.
m1 add: 'Roassal2-Builder-TextBuilder'.
m1 add: 'Roassal2-Builder-Timeline'.
m1 add: 'Roassal2-Builder-Timeline-Tests'.
m1 add: 'Roassal2-Builder-TreeMap'.
m1 add: 'Roassal2-Builder-UI-Slider'.
m1 add: 'Roassal2-Builder-UML'.
m1 add: 'Roassal2-Cachetor'.
m1 add: 'Roassal2-ColorNormalizer'.
m1 add: 'Roassal2-Core'.
m1 add: 'Roassal2-Core-Tests'.
m1 add: 'Roassal2-ExampleBrowser'.
m1 add: 'Roassal2-Experimental'.
m1 add: 'Roassal2-Exporter-HTML5'.
m1 add: 'Roassal2-Exporter-PNG'.
m1 add: 'Roassal2-Exporter-SVG'.
m1 add: 'Roassal2-Interactions'.
m1 add: 'Roassal2-Interactions-Resize'.
m1 add: 'Roassal2-Interactions-Resize-Tests'.
m1 add: 'Roassal2-Layouts'.
m1 add: 'Roassal2-Layouts-Tests'.
m1 add: 'Roassal2-LineDecorations'.
m1 add: 'Roassal2-Scaling'.
m1 add: 'Roassal2-Scaling-Tests'.
m1 add: 'Roassal2-Selection'.
m1 add: 'Roassal2-Shapes'.
m1 add: 'Roassal2-Sparkline'.
m1 add: 'Roassal2-Table'.
m1 add: 'Roassal2-Tests'.
m1 add: 'Roassal2-Utility'.
m1 add: 'Trachel-Callbacks'.
m1 add: 'Trachel-Core'.
m1 add: 'Trachel-Events'.
m1 add: 'Trachel-Shapes'.
m1 add: 'Trachel-ShapesForArrow'.
m1 add: 'Trachel-Tests'.
m1 add: 'Trachel-Viva'.
m1 add: 'Roassal2-Animation'.
m1 add: 'Roassal2-AttachPoint'.
m1 add: 'Roassal2-AttachPoint-Tests'.
m1 add: 'Roassal2-Builder-AnimatedScatterPlot'.
m1 add: 'Roassal2-Builder-ApplicationMatrix'.
m1 add: 'Roassal2-Builder-AxisAdapted'.
m1 add: 'Roassal2-Builder-BoxPlot'.
m1 add: 'Roassal2-Builder-Calendar'.
m1 add: 'Roassal2-Builder-CircularMap'.
m1 add: 'Roassal2-Builder-Common'.
m1 add: 'Roassal2-Builder-Composer'.
m1 add: 'Roassal2-Builder-DSM'.
m1 add: 'Roassal2-Builder-Explora'.
m1 add: 'Roassal2-Builder-Grapher-Core'.
m1 add: 'Roassal2-Builder-Grapher-Decorators'.
m1 add: 'Roassal2-Builder-Grapher-Decorators-Tests'.
m1 add: 'Roassal2-Builder-Grapher-Labeling'.
m1 add: 'Roassal2-Builder-Grapher-Obsolete'.
m1 add: 'Roassal2-Builder-Grapher-Tests'.
m1 add: 'Roassal2-Builder-Kiviat'.
m1 add: 'Roassal2-Builder-Legend'.
m1 add: 'Roassal2-Builder-Map'.
m1 add: 'Roassal2-Builder-Map-Tests'.
m1 add: 'Roassal2-Builder-Menu'.
m1 add: 'Roassal2-Builder-Mondrian'.
m1 add: 'Roassal2-Builder-MondrianOLD'.
m1 add: 'Roassal2-Builder-NameCloud'.
m1 add: 'Roassal2-Builder-PieChart'.
m1 add: 'Roassal2-Builder-ScatterplotMap'.
m1 add: 'Roassal2-Builder-ScrollBar'.
m1 add: 'Roassal2-Builder-SimilarityMatrix'.
m1 add: 'Roassal2-Builder-Simon'.
m1 add: 'Roassal2-Builder-Spectrograph'.
m1 add: 'Roassal2-Builder-StackBarPlot'.
m1 add: 'Roassal2-Builder-StructureMatrix'.
m1 add: 'Roassal2-Builder-Sunburst'.
m1 add: 'Roassal2-Builder-TextBuilder'.
m1 add: 'Roassal2-Builder-Timeline'.
m1 add: 'Roassal2-Builder-Timeline-Tests'.
m1 add: 'Roassal2-Builder-TreeMap'.
m1 add: 'Roassal2-Builder-UI-Slider'.
m1 add: 'Roassal2-Builder-UML'.
m1 add: 'Roassal2-Cachetor'.
m1 add: 'Roassal2-ColorNormalizer'.
m1 add: 'Roassal2-Core'.
m1 add: 'Roassal2-Core-Tests'.
m1 add: 'Roassal2-ExampleBrowser'.
m1 add: 'Roassal2-Experimental'.
m1 add: 'Roassal2-Exporter-HTML5'.
m1 add: 'Roassal2-Exporter-PNG'.
m1 add: 'Roassal2-Exporter-SVG'.
m1 add: 'Roassal2-Interactions'.
m1 add: 'Roassal2-Interactions-Resize'.
m1 add: 'Roassal2-Interactions-Resize-Tests'.
m1 add: 'Roassal2-Layouts'.
m1 add: 'Roassal2-Layouts-Tests'.
m1 add: 'Roassal2-LineDecorations'.
m1 add: 'Roassal2-Scaling'.
m1 add: 'Roassal2-Scaling-Tests'.
m1 add: 'Roassal2-Selection'.
m1 add: 'Roassal2-Shapes'.
m1 add: 'Roassal2-Sparkline'.
m1 add: 'Roassal2-Table'.
m1 add: 'Roassal2-Tests'.
m1 add: 'Roassal2-Utility'.

b := Registry bundleNamed: 'Roassal2'.
btests := Registry bundleNamed: 'Roassal2-Tests'.
bexamples := Registry bundleNamed: 'Roassal2-Examples'.
map := Dictionary new.
classes := b allClasses.
currentB := nil.
classes do:[:cls | 
	cat := cls myClass category asString.
	(m1 includes: cat) ifTrue: [

		currentB := b.
		('*Test' match: cls myClass name) ifTrue: [ 
			currentB := btests.
			('*Tests' match: cat) 
				ifFalse: [ cat := cat , '-Tests'.] ].
		(('*Example*' match: cls myClass name) or: [ '*Examples' match: cls myClass name]) 
			ifTrue: [ 
				currentB := bexamples.
				cat := cat , '-Examples' ].
		('Trachel*' match: cat) 
			ifTrue: [ cat := 'Roassal2-', cat ].
		p := map at: cat ifAbsent: [ 
			p := Registry packageNamedOrCreate: cat.
			currentB addItem: p.
			map at: cat put: p.
			p  ]. 
		XChangeSet current moveWholeClass: cls toPackage: p ]. ].



	"
			
			