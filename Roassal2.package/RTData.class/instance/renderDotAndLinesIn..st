hooks
renderDotAndLinesIn: aView

	builder view addAll: elements.
	interaction setUpElements: elements.
	
	RTMetricNormalizer new
		elements: elements;
		normalizeElementX: [ :anElement | x rtValue: anElement ]
			min: 0
			max: builder extent x
			minValue: minX
			maxValue: maxX.
			
	RTMetricNormalizer new
		elements: elements;
		normalizeElementY: [ :anElement | y rtValue: anElement ]
			min: 0
			max: builder extent y negated
			minValue: minY
			maxValue: maxY.
			
	elementActions do: [ :act | act rtValue: elements ].
			
	self renderLinesFor: elements in: aView