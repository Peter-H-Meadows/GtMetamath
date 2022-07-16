accessing
initializeWith: aHypothModel

| ee |
	model := aHypothModel .
	
ee := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background: ( Color black ).

self addChild: ee .
"selectedMarkerElement background: Color gray ."
self addChild: model body gameElement .
self addChild: selectedMarkerElement