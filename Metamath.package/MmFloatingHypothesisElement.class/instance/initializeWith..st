initialization
initializeWith: aHypothModel

model := aHypothModel .

self margin: (BlInsets all: 2).

selectedMarkerElement := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 4.
			c vertical matchParent ];
		background: BlTransparentBackground new.


self addChild: selectedMarkerElement .

self addChild: model gameElement .