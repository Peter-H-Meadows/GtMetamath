initialization
initialize 

| sc |
	super initialize .

self constraintsDo: [ :c | 
	c horizontal matchParent .
	c vertical matchParent .
].

self layout: BlFrameLayout new .

self background: Color veryVeryDarkGray .

	workPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent .
				"c linear horizontal alignCenter"
				"c frame horizontal weight: 0.5" ];
			layout: BlLinearLayout vertical.

	leftPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent .
				c frame horizontal alignRight.
				c frame vertical alignBottom ];
			layout: BlLinearLayout vertical.
			
			
			sc := BlScrollableElement new .

"sc addChild: leftPane ."

sc constraintsDo: [ :c | 
	c horizontal fitContent  .
	c vertical matchParent ].
	
	
"hide := BrButton new
		
		aptitude: BrGlamorousButtonWithLabelAptitude new;
		label: 'hide';
		action: [ 
		
		
		sc isAttachedToSceneGraph ifTrue: [sc removeFromParent] ifFalse: [self addChild: sc].
		 ].
			
		hide constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignTop ]."
			


			
	hypothPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent .
				c frame horizontal alignLeft.
				"c frame vertical alignBottom"
				 ];
			layout: BlLinearLayout vertical.
			
			"self addLevelButton."	
	
	"leftPane addChild: BlElement new ."

	
	self addChild: workPane asScalableElement asPannableElement.
	
	self addChild: hypothPane .
	
	"self addChild: leftPane" "asScalableElement".
	
	"self addChild:  sc ."
	
self addChild:  leftPane .
	"self addChild: hide."