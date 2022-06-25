instance creation
openOn: aProofModel 

| aEventListener aSpace wantedResultElement |

proofToDo := aProofModel copy "reparse" .

"proofToDo setEhypothsAsCompleted ."

proofToDo setAllVariablesToFixed.

self background: Color veryVeryDarkGray .
"BlTransparentBackground new"

controller := MmGameController new  board: self .
controller finalResultWanted: proofToDo .

self mainWorkspace: (BlElement  new constraintsDo: [ :c | 
	c horizontal matchParent .
	c vertical fitContent 
]; 
background: BlTransparentBackground new;
layout: "BlFlowLayout"  BlLinearLayout horizontal).


workPane  := BlElement  new constraintsDo: [ :c | 
	c horizontal matchParent "fitContent" .
	c vertical fitContent 
]; 
background: BlTransparentBackground new ;
layout: BlLinearLayout vertical .

self addChild: self topPane "asScalableElement".

self addChild: workPane.


proofToDo eHypoths do: [ :ea | | ehypoth |
	
	"ea setCompleted ."
	ehypoth := MmOnBoardEssentialHypothesisElement new model: ea .
	
	aEventListener := MmOnBoardHypothEventListener new gameController: controller .
	ehypoth addEventHandler: aEventListener .
	
	self mainWorkspace addChild: ehypoth .
	
] .

aEventListener := MmProofResultListener new gameController: controller .
wantedResultElement := (MmWantedResultElement new initializeWith: proofToDo)  addEventHandler: aEventListener .

wantedResultElement constraintsDo: [ :c |
		c linear horizontal alignRight.
].

self topPane addChild: BlElement new .

self topPane addChild: wantedResultElement .

workPane addChild: BlElement new .

self addUsable .



"self addOnBoardUsableEHypoths ."

"self addEventHandler: MmBoardListener new  ."



	aSpace := BlSpace new
		extent: 1000@900;
		title: proofToDo name .
	aSpace root addChild: self .
	aSpace show.

