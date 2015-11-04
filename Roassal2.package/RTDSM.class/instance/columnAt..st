accessing
columnAt: aNumber

	^ (1 to: self numberOfObjects) collect: [ :i | self elementAt: aNumber @ i ]