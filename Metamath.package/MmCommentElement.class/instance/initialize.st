accessing
initialize

| clickHandler |
super initialize .

self geometry: BlRectangle new.

self layout: BlLinearLayout  vertical .

self padding: (BlInsets all: 4).
self margin: (BlInsets all: 4).

self constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent ].
				
clickHandler := BlEventHandler
		on: BlClickEvent
		do: [ self removeFromParent
			"container removeEventHandler: clickHandler.
			container addAnimation: animation" ].
self addEventHandler: clickHandler.
	