accessing
rowAt: aNumber

	^ (1 to: self numberOfObjects) collect: [ :i | self elementAt: i @ aNumber ]