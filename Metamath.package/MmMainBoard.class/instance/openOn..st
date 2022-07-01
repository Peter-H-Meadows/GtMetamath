initialization
openOn: aProofModel
	| aEventListener aSpace wantedResultElement |
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
				c vertical fitContent ];
			layout: BlLinearLayout vertical.

	leftPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent .
				c frame horizontal alignLeft.];
			layout: BlLinearLayout vertical.



	aEventListener := MmProofResultListener new gameController: controller.
	wantedResultElement := (MmWantedResultElement new initializeWith: proofToDo)
			addEventHandler: aEventListener.

	"wantedResultElement constraintsDo: [ :c | c linear horizontal alignRight ]."
	wantedResultElement
		"size: 200@200;"
		constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignBottom ].



	proofToDo comments do: [ :ea | self addChild: ea gameElement ].


	proofToDo eHypoths
		do: [ :ea | 
			| ehypoth |
			"ea setCompleted ."
			ehypoth := MmOnBoardEssentialHypothesisElement new model: ea.

			aEventListener := MmOnBoardHypothEventListener new gameController: controller.
			ehypoth addEventHandler: aEventListener.

			leftPane addChild: ehypoth ].

"
	proofToDo comments do: [ :ea | workPane addChild: ea gameElement ]."
	self topPane addChild: BlElement new.

	self addChild: workPane asScalableElement.
	self addChild: leftPane "asScalableElement".
	
	
	self  addChild:  wantedResultElement.	"BlElement new ."

	self addUsableAssertionsToLeftpane.


	mPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			layout: BlLinearLayout horizontal.

	""
"
	mPane addChild: workPane asScalableElement."

	"self addChild: mPane."

	aSpace := BlSpace new
			extent: 900 @ 700;
			title: proofToDo name.
	aSpace root addChild: self.
	aSpace show