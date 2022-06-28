instance creation
openOn: aProofModel 

| aEventListener aSpace wantedResultElement |

proofToDo := aProofModel copy .

"proofToDo setEhypothsAsCompleted ."

proofToDo setAllVariablesToFixed.

controller := MmGameController new  board: self .
controller finalResultWanted: proofToDo .

topPane := (BlElement  new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent 
]; 
layout: BlFlowLayout horizontal).


workPane  := BlElement  new constraintsDo: [ :c | 
	c horizontal "matchParent" fitContent .
	c vertical "matchParent" fitContent 
]; 
background: BlTransparentBackground new ;
layout: BlLinearLayout vertical .

self addChild: self topPane .



aEventListener := MmProofResultListener new gameController: controller .
wantedResultElement := (MmWantedResultElement new initializeWith: proofToDo)  addEventHandler: aEventListener .

wantedResultElement constraintsDo: [ :c |
		c linear horizontal alignRight.
].




proofToDo comments do: [ :ea | self addChild: ea gameElement ].


proofToDo eHypoths do: [ :ea | | ehypoth |
	
	"ea setCompleted ."
	ehypoth := MmOnBoardEssentialHypothesisElement new model: ea .
	
	aEventListener := MmOnBoardHypothEventListener new gameController: controller .
	ehypoth addEventHandler: aEventListener .
	
	self topPane addChild: ehypoth .
	
] .


self topPane addChild: BlElement new .

self topPane addChild: wantedResultElement .


"workPane addChild: BlElement new ."

self addUsableAssertions .



self addChild: workPane asScalableElement.


	aSpace := BlSpace new
		extent: 1000@900;
		title: proofToDo name .
	aSpace root addChild: self .
	aSpace show.

