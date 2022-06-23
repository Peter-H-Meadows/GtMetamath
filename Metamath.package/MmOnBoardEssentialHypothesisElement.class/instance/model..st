accessing
model: m

| aText ee |
model := m .

model announcer when: MmHighlightAnnouncement send: #highlight to: self.
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self.
model announcer when: MmCanMapAnnouncement send: #canMap: to: self.

ee := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background: ( Color black ).

self addChild: ee .

self addChild: model body gameElement .

"aText := '{ ' asRopedText.
aText fontSize: 20.
aText foreground: Color gray .
textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear vertical alignCenter ].
self addChildFirst: textElement ."



selectedMarkerElement := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background:  BlTransparentBackground new .

self addChild: selectedMarkerElement .

self padding: (BlInsets all: 4).
self margin: (BlInsets all: 4).

