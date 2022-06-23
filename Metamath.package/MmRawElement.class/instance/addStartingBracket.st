adding
addStartingBracket

"| aText textElement |
aText := '{ ' asRopedText.
aText fontSize: 20.
aText foreground: Color gray .
textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear vertical alignCenter ]."

| startBracketElement |
startBracketElement := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background: ( Color blue muchDarker ).

self addChildFirst: startBracketElement .