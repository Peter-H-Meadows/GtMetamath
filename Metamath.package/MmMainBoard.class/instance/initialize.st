initialization
initialize 

super initialize .

self constraintsDo: [ :c | 
	c horizontal matchParent .
	c vertical matchParent .
].

self layout: BlFrameLayout new .


self background: Color veryVeryDarkGray .
"
self layout: BlLinearLayout vertical ."


"sc := BlScrollableElement new .
sc addChild: middleThings .
sc constraintsDo: [ :c | 
	c horizontal matchParent  .
	c vertical matchParent ].

mainWorkspace addChild:  sc ."
