deprecated
initializeWithHypoth: aHypoth

| aText |

self error .

model := aHypoth .

self margin:  (BlInsets all: 4).

"aText := aHypoth name asRopedText .

aText fontSize: 30.
aText foreground: Color veryLightGray .

textElement := (BlTextElement text: aText) constraintsDo: [ :c | 
					c linear vertical alignCenter ]."

"self addChild: textElement ."

self addChild: aHypoth body gameElement 