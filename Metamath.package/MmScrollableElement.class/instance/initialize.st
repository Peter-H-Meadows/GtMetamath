initialization
initialize 

super initialize .
self addEventHandler: MmScrollHandler new .
self constraintsDo: [ :c |
					c horizontal matchParent.
					c vertical matchParent  ]