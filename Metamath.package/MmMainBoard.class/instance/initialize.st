initialization
initialize 

super initialize .

self constraintsDo: [ :c | 
	c horizontal matchParent .
	c vertical matchParent .
].

self layout: BlFrameLayout new .

self background: Color veryVeryDarkGray .