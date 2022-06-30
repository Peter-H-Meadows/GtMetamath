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

self addChild: self topPane .

workPane  := BlElement  new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent 
];
layout: BlLinearLayout vertical .

leftPane  := BlElement  new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent 
];
layout: BlLinearLayout vertical .



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

self addUsableAssertionsToLeftpane .


mPane  := BlElement  new constraintsDo: [ :c | 
	c horizontal matchParent .
	c vertical fitContent 
];
layout: BlLinearLayout horizontal.

mPane addChild: leftPane.

mPane addChild: workPane asScalableElement.

self addChild: mPane.

	aSpace := BlSpace new
		extent: 1000@900;
		title: proofToDo name .
	aSpace root addChild: self .
	aSpace show.

