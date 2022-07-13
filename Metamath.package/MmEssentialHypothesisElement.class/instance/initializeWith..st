initialization
initializeWith: aHypothModel

model := aHypothModel .


"model announcer when: #complete" "MmHighlightAnnouncement" "send: #highlight: to: self."

model announcer when: #fail send: #fail: to: self.

model announcer when: #maps send: #success: to: self.

self margin: (BlInsets all: 2).

self addChildFirst: selectedMarkerElement .

"model parsep ."

"model body ifNotNil: ["

	self addChild: model body gameElement 