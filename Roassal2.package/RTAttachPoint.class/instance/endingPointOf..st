public - hooks
endingPointOf: anEdge
    ^ inverted
        ifTrue: [ self basicStartingPointOf: anEdge ]
        ifFalse: [ self basicEndingPointOf: anEdge ]