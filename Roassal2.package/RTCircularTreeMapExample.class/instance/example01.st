sources
example01

| b |
	b := RTCircularTreeMapBuilder new.
	b shape
		color: Color transparent.
	
	b
		baseradius: 200;
		weight: #tally.
	b explore: (MessageTally new
		spyEvery: 1
		on: [ Object numberOfLinesOfCode ]; 
		yourself)
		using: #children.
	
	b build.
	^ b view