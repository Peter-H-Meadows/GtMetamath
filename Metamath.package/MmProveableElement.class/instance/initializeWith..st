initialization
initializeWith: proveableModel

| aText textElement |

self model: proveableModel . 

aText := '|- ' asRopedText .
aText fontSize: 18.
aText foreground: Color white   .
textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear vertical alignCenter ].
self addChild: textElement .

"proveableModel body do: [ :ea | self addChild: ea gameElement . ]"

self addChild: proveableModel body gameElement .