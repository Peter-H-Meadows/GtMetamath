accessing
initializeWith: m 

| aText textElement |
	model := m .
	
	self addChild: model first gameElement.

	
	aText := model unicodeSymbol asRopedText
		fontSize: 18; "bold ;"
		foreground: (Color white);
		fontName: 'Cambria Math' .
		

	textElement := BlTextElement new 
		text: aText ;
		constraintsDo: [ :c | c linear vertical alignCenter ].
		
	textElement padding: (BlInsets all: 6).
		
	self addChild: textElement.

	self addChild: model second gameElement.

"model announcer when: MmHighlightAnnouncement send: #highlight to: self .
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self."
