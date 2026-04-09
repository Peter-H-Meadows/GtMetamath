initialization
initializeWith: aAssertion
|  el  aText |

model := aAssertion .

"model announcer when: MmHighlightAnnouncement send: #highlight to: self.

model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self.

model announcer when: MmCanMapAnnouncement send: #canMap: to: self."


aAssertion body ifNil: [

aText := aAssertion name asRopedText .
aText fontSize: 18.
aText foreground: Color gray  .
textElement := (BlTextElement text: aText). 
self addChild: textElement .
^ self ].

el := aAssertion body gameElement . 
el constraintsDo: [ :c | c linear horizontal alignCenter ].

self addChild: el .