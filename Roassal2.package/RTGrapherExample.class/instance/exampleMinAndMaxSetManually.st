sources
exampleMinAndMaxSetManually

| b ds |
b := RTGrapher new.
ds := RTData new.
ds points: #(1 2 3).
b add: ds.

b maxX: 6.
b minX: -2.
b maxY: 5.

b build.
^ b view