accessing
initialize
	super initialize.
	
	self addAll: {
		BrGlamorousButtonExteriorAptitude new 
			backgroundPaint: Color veryDarkGray ;
			borderPaint: Color veryDarkGray ;
			borderWidth: 10 .
		BrGlamorousButtonRectangularAptitude new.
		BrGlamorousButtonLabelAptitudeMm new
			defaultColor: Color red .
	}
