accessing
hi: f
| aText |
"textElement removeFromParent ."

aText := ' done ' asRopedText .
aText fontSize: 30.
aText foreground: Color green .
textElement := (BlTextElement text: aText) constraintsDo: [ :c |c linear vertical alignCenter ].
self addChildFirst: textElement .

self requestParentLayout .