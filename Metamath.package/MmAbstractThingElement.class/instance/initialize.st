accessing
initialize

super initialize .

"self addEventHandler: MmOnListUsableEventListener new ."

selected := false .

selectedMarkerElement := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 4.
			c vertical matchParent ].
			

"self geometry: BlRectangle new ."

"self background: Color veryVeryDarkGray ."

self padding: (BlInsets all: 4).

"self margin: (BlInsets top: 10 bottom: 10)"
