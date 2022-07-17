initialization
initializeWith: aHypothModel

	model := aHypothModel .


"self addEventHandler: MmOnListUsableEventListener new ."

"model announcer when: #complete" "MmHighlightAnnouncement" "send: #highlight: to: self."

"model announcer when: #fail send: #fail: to: self."

model announcer when: #maps send: #success: to: self.

"self margin: (BlInsets all: 2)."

self addChildFirst: selectedMarkerElement .

"ee := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background: ( Color black ).

self addChild: ee ."

self addChild: model body gameElement 