accessing
initialize

	| el |
	super initialize.

	self
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].

	"self layout: BlFrameLayout new."
	
	self layout: (GtGraphHorizontalTreeLayout new layered; verticalGap: 20).
self layout:  (GtGradHorizontalDominanceCenteredTreeLayout new).
	"self background: Color random."
	
	8 timesRepeat: [el := FunArtElement new.
		self addChild: el .] .
	
	self when: BlMouseDownEvent do: [ :anEvent | 
	
		 el := FunArtElement new.
		self addChild: el .
		3 timesRepeat: [ self halt.
		el graph connectTo: self children atRandom .].
	
	].