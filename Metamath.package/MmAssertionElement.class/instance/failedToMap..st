as yet unclassified
failedToMap: ann 

"self background: Color red ."
"textElement removeFromParent ."

| aText |
aText := ' fail ' asRopedText .
aText fontSize: 30.
aText foreground: Color red .
textElement := (BlTextElement text: aText) constraintsDo: [ :c |c linear vertical alignCenter ].
self addChild: textElement .


"| aText textElement |
aText := ann reason asRopedText .

aText fontSize: 18.
aText foreground: Color red .

textElement := (BlTextElement text: aText) constraintsDo: [ :c | 
					c linear vertical alignCenter ].

self addChild: textElement ."