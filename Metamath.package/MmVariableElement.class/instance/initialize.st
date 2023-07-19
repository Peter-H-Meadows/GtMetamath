accessing
initialize

super initialize .

self "geometry: BlRectangle new;"
		
		"background: BlTransparentBackground new ;"
		
		"constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent .
					c linear vertical alignCenter ];
		
		layout: BlLinearLayout  vertical ."

				