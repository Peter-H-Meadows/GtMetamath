initialization
initializeWith: aHypothModel
| aText |
	model := aHypothModel .

"self addEventHandler: MmEhyp new ."

"self addEventHandler: MmBoardListener new ."

"model announcer when: #complete" "MmHighlightAnnouncement" "send: #highlight: to: self."

model announcer when: #fail send: #fail: to: self.

model announcer when: #maps send: #success: to: self.

self margin: (BlInsets all: 6).

self addChildFirst: selectedMarkerElement .

self background: ( Color blue ).

"ee := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background: ( Color black ).

self addChild: ee ."

"model body ifNotNil: [
self addChild: model body gameElement ]"

model body ifNil: [ self error ].

"aText := model name asRopedText .
aText fontSize: 18.
aText foreground: Color gray  .
textElement := (BlTextElement text: aText). 
self addChild: textElement ."

self addChild: model body gameElement .

"self halt ."

"self addRightClickMenu ."