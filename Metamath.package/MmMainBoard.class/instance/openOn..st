initialization
openOn: aProofModel
	| aEventListener aSpace wantedResultElement hide cc |
	proofToDo := aProofModel copy.

	proofToDo setAllVariablesToFixed.

	controller := MmGameController new board: self.
	controller finalResultWanted: proofToDo.

	topPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: BlFlowLayout horizontal.
"
	self addChild: self topPane."

	workPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent .
				"c linear horizontal alignRight."
				c frame horizontal weight: 0.5];
			layout: BlLinearLayout vertical.

	leftPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent .
				c frame horizontal alignLeft.];
			layout: BlLinearLayout vertical.

hide := BrButton new
		beHugeSize;
		aptitude: BrGlamorousButtonWithLabelAptitude new;
		label: 'hide';
		action: [ 
		
		
		leftPane isAttachedToSceneGraph ifTrue: [leftPane removeFromParent] ifFalse: [self addChild: leftPane].
		 ]. 
	aEventListener := MmProofResultListener new gameController: controller.
	wantedResultElement := (MmWantedResultElement new initializeWith: proofToDo)
			addEventHandler: aEventListener.
			
		hide	constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignTop ].
			



	"wantedResultElement constraintsDo: [ :c | c linear horizontal alignRight ]."
	wantedResultElement
		"size: 200@200;"
		constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignTop ].



	proofToDo comments do: [ :ea |  cc := ea gameElement ].
	
	cc constraintsDo: [ :c |
			"c frame horizontal alignRight."
			c frame vertical alignBottom ].
	self addChild: cc.


	proofToDo eHypoths
		do: [ :ea | 
			| ehypoth |
			"ea setCompleted ."
			ehypoth := MmOnBoardEssentialHypothesisElement new model: ea.

			aEventListener := MmOnBoardHypothEventListener new gameController: controller.
			ehypoth addEventHandler: aEventListener.
			
			
ea announcer when: #mm send: #highlight: to: self.
			

			leftPane addChild: ehypoth ].

"
	proofToDo comments do: [ :ea | workPane addChild: ea gameElement ]."
	
	"self topPane addChild: BlElement new."

	
	self addChild: workPane asScalableElement asPannableElement.
	
	self addChild: leftPane "asScalableElement".
	
	self  addChild:  wantedResultElement.

	self addUsableAssertionsToLeftpane.

	self addChild: hide.

	"mPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: BlLinearLayout horizontal."

	""
"
	mPane addChild: workPane asScalableElement."

	"self addChild: mPane."

	"aSpace := BlSpace new
			extent: 900 @ 700;
			title: proofToDo name.
	aSpace root addChild: self.
	aSpace show"