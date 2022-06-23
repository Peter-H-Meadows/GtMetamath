as yet unclassified
initializeWith: m 

| aText textElement |
model := m .

"model announcer when: MmHighlightAnnouncement send: #highlight to: self .
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self."

aText := 'wff ' asRopedText .
aText fontSize: 18.
aText foreground: Color white   .
textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear vertical alignCenter ].
self addChild: textElement .

"model body do: [ :ea | self addChild: ea gameElement  ]."

self addChild: model body gameElement .