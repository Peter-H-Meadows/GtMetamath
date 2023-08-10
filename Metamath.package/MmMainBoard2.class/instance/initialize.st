initialization
initialize
	| sc hideButton |
	super initialize.

	self
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].

	self layout: BlFrameLayout new.
	"BlLinearLayout vertical."

	self background: Color veryVeryDarkGray.

	workPane := BlElement new
	"constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ];"
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent.
				"c frame horizontal weight: 0.7 ."
				c frame horizontal alignRight
			];
			layout: 
				"BlLinearLayout vertical" 
				"GtGraphTreemapLayout squarify."
				"(BlGridLayout  new columnCount: 3)."
				BlLinearLayout vertical.
				
	workPane background: Color veryDarkGray.
				
	"workPane size: 1028@720."	

	leftPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent.
				"c frame horizontal alignLeft.
				c frame vertical alignBottom" ];
			layout: BlLinearLayout vertical.


	sc := BlScrollableElement new.

	sc addChild: leftPane.

	sc
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical matchParent.
			c frame horizontal alignLeft	"linear" ].


	hideButton := BrButton new
			aptitude: BrGlamorousButtonWithLabelAptitude new;
			label: 'hide';
			action: [ sc isAttachedToSceneGraph
					ifTrue: [ sc removeFromParent ]
					ifFalse: [ self addChild: sc ] ].

	hideButton
		constraintsDo: [ :c | 
			c frame horizontal alignLeft .
			c frame vertical alignBottom ].

	hypothPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent.
				c frame horizontal alignLeft.
				c frame vertical alignBottom
			];
			layout: BlLinearLayout vertical.
			
			"self addLevelButton."	
			"leftPane addChild: BlElement new ."


	self addChild: workPane  "asPannableElement" "asScalableElement".

	self addChild: hypothPane.
	
	"self addChild: leftPane"
	"asScalableElement"

	self addChild: sc.
	self addChild: hideButton.
