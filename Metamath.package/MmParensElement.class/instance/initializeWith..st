initialization
initializeWith: mod 

| aText textElement |
	model := mod .

	self addChild: model first gameElement.

	aText := self unicodeSymbol asRopedText
		fontSize: 18; "bold ;"
		foreground: (Color white);
		fontName: 'Cambria Math' .
		
	"'Bauhaus 93'" "'Curlz MT'" "'Phosphate'."
	
	textElement := BlTextElement new 
		text: aText ;
		constraintsDo: [ :c | c linear vertical alignCenter ].
		"effect: (BlGaussianShadowEffect color: (Color red alpha: 0.9) width: 10 offset: 1@0)."
		
	textElement padding: (BlInsets all: 6).
		
	self addChild: textElement.

	self addChild: model second gameElement.