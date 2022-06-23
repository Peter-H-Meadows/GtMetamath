initialization
name: n

| aText  |
aText := n asRopedText .

aText fontSize: 30.
aText foreground: Color veryLightGray .

textElement := (BlTextElement text: aText) constraintsDo: [ :c | 
					"c horizontal fitContent.
					c vertical fitContent . "
					c linear vertical alignCenter ].

"self addChild: textElement ."