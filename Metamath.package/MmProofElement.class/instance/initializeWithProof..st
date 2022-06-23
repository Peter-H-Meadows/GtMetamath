initialization
initializeWithProof: aAssertion

| aText el box comment |

self model: aAssertion .

"aText := aAssertion name asRopedText .
aText fontSize: 18.
aText foreground: Color white   .
textElement := (BlTextElement text: aText) .
self addChild: textElement ."


box := BlElement new layout: BlLinearLayout vertical .

"
self padding: (BlInsets all: 4).
self margin: (BlInsets all: 4)."

box constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent ].


(aAssertion body respondsTo: #gameElement) ifTrue: [
el := aAssertion body gameElement ] ifFalse: [
el := BlElement new] . 




el constraintsDo: [ :c | c linear horizontal alignCenter ].

box addChild: el .

"comment := MmCommentElement new createFromString: aAssertion lastComment body .
box addChild: comment ."
self addChild: box .


