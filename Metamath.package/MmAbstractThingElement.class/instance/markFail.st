accessing
markFail
| aText |
"textElement removeFromParent ."

aText := 'no  ' asRopedText .
aText fontSize: 30.
aText foreground: Color red .
textElement := (BlTextElement text: aText) constraintsDo: [ :c |c linear vertical alignCenter ].
self addChildFirst: textElement .

self requestParentLayout .