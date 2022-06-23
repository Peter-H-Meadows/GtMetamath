accessing
highlightAsSelected 

"self background: self backgroundColor lighter ."

"self border: (BlBorder paint: Color gray width: 6 )."

| aText |
aText := ':' asRopedText.
aText fontSize: 50.
aText foreground: Color white .
selectedMarkerElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear vertical alignCenter ].

self addChild: selectedMarkerElement 