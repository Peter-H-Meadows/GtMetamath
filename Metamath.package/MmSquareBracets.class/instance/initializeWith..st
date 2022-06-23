accessing
initializeWith: bracket 

model := bracket .

"model announcer when: MmHighlightAnnouncement send: #highlight to: self .
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self."

"bracket body do: [ :ea | self addChild: ea gameElement  ]."


self addChild: model body gameElement