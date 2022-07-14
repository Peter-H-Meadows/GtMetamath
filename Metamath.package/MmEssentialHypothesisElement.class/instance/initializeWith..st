initialization
initializeWith: aHypothModel

model := aHypothModel .


"self addEventHandler: MmOnListUsableEventListener new ."

"model announcer when: #complete" "MmHighlightAnnouncement" "send: #highlight: to: self."

model announcer when: #fail send: #fail: to: self.

model announcer when: #maps send: #success: to: self.

self margin: (BlInsets all: 2).

self addChildFirst: selectedMarkerElement .

self addChild: model body gameElement 