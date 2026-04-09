initialization
initializeWith: aProofModel

| startBracketElement aText textElemen hypothBox vertCont |
model := aProofModel .

vertCont := self vertBox .

self addChild: vertCont.

self margin: (BlInsets all: 2).

self addChild: selectedMarkerElement .

vertCont addChild: model body gameElement .

	aText := aProofModel bodyString asRopedText .

	aText fontSize: 18.
	aText foreground: Color veryLightGray .
	textElemen := (BlTextElement text: aText) "constraintsDo: [ :c | c linear horizontal alignCenter ]".
	vertCont addChild: textElemen .

startBracketElement := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background: ( Color black  ).

self addChild: startBracketElement .