initialization
initialize 

| sc hideButton textElement aText |
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
			
			
"aText := ' level 1 ' asRopedText .
aText fontSize: 30.
aText foreground: Color green .
textElement := (BlTextElement text: aText) .

self addChild: textElement asScalableElement ."
			
			
			
			
			

	leftPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent .
				c frame horizontal alignRight.
				c frame vertical alignBottom ];
			layout: BlLinearLayout vertical.
			
			
			sc := BlScrollableElement new .

sc addChild: leftPane .

sc constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical matchParent .
	c "linear" frame horizontal alignRight ].
	
	
hideButton := BrButton new
		
		aptitude: BrGlamorousButtonWithLabelAptitude new;
		label: 'hide';
		action: [ 
		
		
		sc isAttachedToSceneGraph ifTrue: [sc removeFromParent] ifFalse: [self addChild: sc].
		 ].
			
		hideButton constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignBottom ].
			


			
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
	
self addChild:  "leftPane" sc .
self addChild: hideButton.