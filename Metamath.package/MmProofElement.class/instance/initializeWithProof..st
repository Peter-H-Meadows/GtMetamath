initialization
initializeWithProof: aAssertion

|  el box  |

self model: aAssertion .

model announcer when: #complete  send: #highlight: to: self.

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


