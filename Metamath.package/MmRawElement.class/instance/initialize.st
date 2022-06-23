accessing
initialize

super initialize .


		
		self background: BlTransparentBackground new "self backgroundColor" ;
		"border: (BlBorder paint: self borderColor width: self borderWidth );"
		constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent .
					c linear vertical alignCenter ];
		"padding: (BlInsets all: 0);
		margin: (BlInsets all: 0);"
		layout: BlLinearLayout horizontal  .