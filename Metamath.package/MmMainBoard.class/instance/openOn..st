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
background: BlTransparentBackground new;
layout: BlFlowLayout vertical"horizontal").


workPane  := BlElement  new constraintsDo: [ :c | 
	c horizontal "matchParent" fitContent .
	c vertical "matchParent" fitContent 
]; 
background: BlTransparentBackground new ;
layout: BlLinearLayout vertical .

self addChild: self topPane .

self addChild: workPane asScalableElement.


aEventListener := MmProofResultListener new gameController: controller .
wantedResultElement := (MmWantedResultElement new initializeWith: proofToDo)  addEventHandler: aEventListener .

wantedResultElement constraintsDo: [ :c |
		c linear horizontal alignRight.
].


self "topPane" addChild: wantedResultElement .


proofToDo eHypoths do: [ :ea | | ehypoth |
	
	"ea setCompleted ."
	ehypoth := MmOnBoardEssentialHypothesisElement new model: ea .
	
	aEventListener := MmOnBoardHypothEventListener new gameController: controller .
	ehypoth addEventHandler: aEventListener .
	
	self topPane addChild: ehypoth .
	
] .


"workPane addChild: BlElement new ."

self addUsableAssertions .

self topPane addChild: BlElement new .



	aSpace := BlSpace new
		extent: 1000@900;
		title: proofToDo name .
	aSpace root addChild: self .
	aSpace show.

