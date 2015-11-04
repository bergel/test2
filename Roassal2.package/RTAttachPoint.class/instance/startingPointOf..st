public - hooks
startingPointOf: anEdge
    ^ inverted
        ifTrue: [ self basicEndingPointOf: anEdge ]
        ifFalse: [ self basicStartingPointOf: anEdge ]
