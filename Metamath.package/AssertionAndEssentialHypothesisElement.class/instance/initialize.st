accessing
initialize 

| hideButton |
	super initialize .

self addChild:  greenElement .

"self border: (BlBorder paint: Color gray width: 2 ) ."

hypothBox := BlElement new layout: BlLinearLayout  vertical .

self padding: (BlInsets all: 4).
self margin: (BlInsets all: 4).

hypothBox constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent ].

self addChild: hypothBox.

	hideButton := BrButton new
			aptitude: BrGlamorousButtonWithLabelAptitude new;
			label: 'X';
			action: [ self removeFromParent ].

	hideButton
		constraintsDo: [ :c | 
			c frame horizontal alignRight.
			c frame vertical alignBottom ].
			
	hideButton background: Color veryVeryDarkGray.
	
	self addChild: hideButton.
