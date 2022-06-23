initialization
initializeWith: aProofModel

| startBracketElement |
model := aProofModel .

self margin: (BlInsets all: 2).

self addChildFirst: selectedMarkerElement .

self addChild: model body gameElement .

startBracketElement := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background: ( Color black  ).

self addChild: startBracketElement .