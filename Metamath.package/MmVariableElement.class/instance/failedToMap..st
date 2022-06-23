mapping
failedToMap: ann 
| aText |
"self inform: ann reason."

self hi: Color red.

"textElement removeFromParent .

aText := (model abname, ann reason) asRopedText .
aText fontSize: 18.
aText foreground: Color red .
textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear horizontal alignCenter ].
self addChild: textElement ."


"self addChild: ann mappedTo gameElement "