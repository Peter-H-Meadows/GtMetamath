initialization
initialize
	| mmodel look |
	super initialize.
	"self border: (BlBorder paint: Color gray width: 2)."
	hypothBox := BlElement new layout: BlLinearLayout vertical.
	self padding: (BlInsets all: 4).
	self margin: (BlInsets all: 4).
	hypothBox
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ].
	self addChild: hypothBox.

	"self layout: BlLinearLayout vertical ."

	"self margin: (BlInsets all: 10) ."

	"self padding: (BlInsets all: 20) ."
	
