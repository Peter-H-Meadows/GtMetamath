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
	
(aAssertion body respondsTo: #gameElement) ifFalse: [
	self error.
] . 


"root layout: (BlGridLayout horizontal cellSpacing: 20; columnCount: 2).
	root children do: [ :child |
		child constraintsDo: [ :c | c grid horizontal alignCenter ] ]."



box layout: (BlGridLayout horizontal cellSpacing: 8; columnCount: aAssertion body body body size ).

"el := aAssertion body gameElement . 

el constraintsDo: [ :c | c linear horizontal alignCenter ].

box addChild: el ."

aAssertion body body sts  do: [ :ea | 
	box addChild: ea gameElement .
].

"comment := MmCommentElement new createFromString: aAssertion lastComment body .
box addChild: comment ."

self addChild: box .