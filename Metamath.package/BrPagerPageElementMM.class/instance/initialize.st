initialization
initialize
self error.
	super initialize.
	
	self viewModel: BrPagerPageModel new.
	self beInSeparateCompositionLayer.
	"weight := 0.5."
	
	self constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
aWidthSpec := BlMeasurementSpec exact: 1 "(66 * 5 atRandom)" .
aHeightSpec := BlMeasurementSpec exact: 1 "(66 * 7 atRandom)".