accessing
initializeWith: bracket 

| aText textElement |
	model := bracket .

"model announcer when: MmHighlightAnnouncement send: #highlight to: self .
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self."

"bracket body do: [ :ea | self addChild: ea gameElement  ]."

"self addChild: model body gameElement"
self addChild: model first gameElement.

	aText := ' /\ ' asRopedText
		fontSize: 12; bold ;
		foreground: (Color white);
		fontName: "'Bauhaus 93'" "'Curlz MT'" 'Phosphate'.
	
	textElement := BlTextElement new 
		text: aText ;
		constraintsDo: [ :c | 
		               c linear vertical alignCenter ].
		"effect: (BlGaussianShadowEffect color: (Color red alpha: 0.9) width: 10 offset: 1@0)."
		
		self addChild: textElement.

self addChild: model second gameElement.