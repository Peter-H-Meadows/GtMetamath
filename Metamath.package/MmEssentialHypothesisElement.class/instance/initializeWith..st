initialization
initializeWith: aHypothModel

model := aHypothModel .

self margin: (BlInsets all: 2).

self addChildFirst: selectedMarkerElement .

"model parsep ."

model body ifNotNil: [

	self addChild: model body gameElement ]