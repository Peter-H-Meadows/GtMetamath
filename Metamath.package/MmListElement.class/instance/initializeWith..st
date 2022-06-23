initialization
initializeWith: aModel 

model := aModel .

"model announcer when: MmHighlightAnnouncement send: #highlight to: self .
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self."

model body do: [ :ea | self addChild: ea gameElement  ].