as yet unclassified
vertBox
| vBox |
vBox := BlElement new layout: BlLinearLayout  vertical .

self padding: (BlInsets all: 4).
self margin: (BlInsets all: 4).

vBox constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent ].
					
		^ vBox