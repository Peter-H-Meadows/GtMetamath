accessing
initializeWith: mod 

| aText textElement |
	model := mod .



	aText := model unicodeSymbol asRopedText
		fontSize: 18; "bold ;"
		foreground: (Color white);
		fontName: 'Cambria Math' .

	textElement := BlTextElement new 
		text: aText ;
		constraintsDo: [ :c | c linear vertical alignCenter ].
		
	textElement padding: (BlInsets all: 4).
		
	self addChild: textElement.
	
	self addChild: model first gameElement.

	self addChild: model second gameElement.
