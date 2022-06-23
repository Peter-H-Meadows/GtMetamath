accessing
createFromString: str 

| aText textElement |
str linesDo: [ :line | 

	aText := line asRopedText .

	aText fontSize: 18.
	aText foreground: Color veryLightGray .
	textElement := (BlTextElement text: aText) "constraintsDo: [ :c | c linear horizontal alignCenter ]".
	self addChild: textElement .

] .