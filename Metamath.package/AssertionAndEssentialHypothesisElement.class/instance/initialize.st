accessing
initialize 

| menuModel |
super initialize .

"self border: (BlBorder paint: Color gray width: 2 ) ."

hypothBox := BlElement new layout: BlLinearLayout  vertical .

self padding: (BlInsets all: 4).
self margin: (BlInsets all: 4).

hypothBox constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent ].

self addChild: hypothBox
