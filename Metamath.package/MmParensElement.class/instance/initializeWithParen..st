initialization
initializeWithParen: aParen

self error .

model := aParen .

model announcer when: MmHighlightAnnouncement send: #highlight to: self .

model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self.


aParen body do: [ :ea | self addChild: ea gameElement  ].

"self addChild: aParen left gameElement .

self addChild: aParen right gameElement ."