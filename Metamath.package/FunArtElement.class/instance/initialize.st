accessing
initialize

	| el |
	super initialize.

	"self
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ]."

	"self layout: BlFrameLayout new."
	
	"self layout: (GtGraphHorizontalTreeLayout new layered; verticalGap: 20).
"
	self background: Color random.
	
	self when: BlMouseDownEvent do: [ :anEvent | 
	
		 el := FunArtElement new.
		board addChild: el .
	
	].