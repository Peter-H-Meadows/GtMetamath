accessing
initializeWith: mod 

| aText textElement ee |
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
	
	 ee := model first gameElement constraintsDo: [ :c | c linear vertical alignCenter ].
	
	self addChild: ee.

	self addChild: model second gameElement.
