initialization
openOn: aProofModel
	| hide cc sc |
	
	proofToDo := aProofModel copy.
	proofToDo setAllVariablesToFixed.

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
				c frame horizontal alignLeft.
				c frame vertical alignBottom ];
			layout: BlLinearLayout vertical.
			
	sc := BlScrollableElement new .
sc addChild: leftPane .
sc constraintsDo: [ :c | 
	c horizontal fitContent  .
	c vertical matchParent ].


			
	hypothPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent .
				c frame horizontal alignRight.
				c frame vertical alignBottom
				 ];
			layout: BlLinearLayout vertical.
			
			"self addLevelButton."	

hide := BrButton new
		"beHugeSize;"
		aptitude: BrGlamorousButtonWithLabelAptitude new;
		label: 'hide';
		action: [ 
		
		
		sc isAttachedToSceneGraph ifTrue: [sc removeFromParent] ifFalse: [self addChild: sc].
		 ].
			
		hide constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignTop ].
			

	wantedResultElement := MmWantedResultElement new initializeWith: proofToDo .
wantedResultElement addBoardHandler.
wantedResultElement  announcer when: MmWantedSelectedAnnouncement send: #wantedSelected: to: self.

	wantedResultElement
		"size: 200@200;"
		constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignTop ].



	proofToDo comments do: [ :ea |  cc := ea gameElement ].
	
	cc constraintsDo: [ :c |
			c frame vertical alignBottom ].
	self addChild: cc.


	proofToDo eHypoths
		do: [ :ea | 
				| ehypoth |
				ea setAsComplete .
				ehypoth := MmOnBoardEssentialHypothesisElement new initializeWith:  ea .
				
				ehypoth addBoardHandler .
				
				ehypoth announcer when: MmUseableSelectedAnnouncement send: #usableSelected: to: self.
			
				hypothPane addChild: ehypoth .
				
				"leftPane addChild: ehypoth ."
		].
		
	"leftPane addChild: BlElement new ."

	
	self addChild: workPane asScalableElement asPannableElement.
	
	self addChild: hypothPane .
	
	"self addChild: leftPane" "asScalableElement".
	
	self addChild:  sc .
	
	self  addChild:  wantedResultElement.

	self addUsableAssertionsToLeftpane.

	self addChild: hide.