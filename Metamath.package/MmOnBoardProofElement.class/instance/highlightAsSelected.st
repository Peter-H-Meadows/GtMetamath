accessing
highlightAsSelected 

selectedMarkerElement := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 8.
			c vertical matchParent ];
		background: ( Color gray ).
		
self addChildFirst: selectedMarkerElement .
		