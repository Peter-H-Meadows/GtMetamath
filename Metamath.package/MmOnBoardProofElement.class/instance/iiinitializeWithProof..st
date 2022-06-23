initialization
iiinitializeWithProof: aAssertion

| aText el box |

self model: aAssertion .

box := BlElement new layout: BlLinearLayout vertical .

"self padding: (BlInsets all: 4).
self margin: (BlInsets all: 4)."

box constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent ].


el := aAssertion body gameElement . 
el constraintsDo: [ :c | c linear horizontal alignCenter ].

box addChild: el .

aAssertion lastComment body linesDo: [ :line | 

aText := line asRopedText .

aText fontSize: 18.
aText foreground: Color veryLightGray .
textElement := (BlTextElement text: aText) "constraintsDo: [ :c | c linear horizontal alignCenter ]".
box addChild: textElement .

] .

self addChild: box .
