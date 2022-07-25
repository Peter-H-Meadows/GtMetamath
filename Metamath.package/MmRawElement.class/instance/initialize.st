accessing
initialize
	super initialize.
	self
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent.
			"c linear vertical alignCenter" ];
		layout: BlLinearLayout horizontal .
		
		"announcer" 
		
		"background: BlTransparentBackground new"	"self backgroundColor"	"border: (BlBorder paint: self borderColor width: self borderWidth );"	"padding: (BlInsets all: 0);
		margin: (BlInsets all: 0);"