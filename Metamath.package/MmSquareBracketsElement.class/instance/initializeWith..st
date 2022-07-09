accessing
initializeWith: mod 

| aText textElement |

model := mod .

"model announcer when: MmHighlightAnnouncement send: #highlight to: self .
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self."

"bracket body do: [ :ea | self addChild: ea gameElement  ]."


	self addChild: model first gameElement.

	aText := "self unicodeSymbol" '/' asRopedText
		fontSize: 18;
		foreground: (Color white);
		fontName: 'Cambria Math' .
		
	textElement := BlTextElement new 
		text: aText ;
		constraintsDo: [ :c | c linear vertical alignCenter ].
		
	textElement padding: (BlInsets all: 6).
		
	self addChild: textElement.

	self addChild: model second gameElement.
