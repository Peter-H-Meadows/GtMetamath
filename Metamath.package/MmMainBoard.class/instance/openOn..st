instance creation
openOn: aProofModel 

|  aEventListener el aSpace wantedResultElement |

proofToDo := aProofModel "copyAndClean" copy reparse "setAllVariablesToFixed" .
"proofToDo setEhypothsAsCompleted ."


proofToDo setAllVariablesToFixed.

self background: "BlTransparentBackground new" Color veryVeryDarkGray .

controller := MmGameController new  board: self .
controller finalResultWanted: proofToDo .


"proofSpace := BlElement  new constraintsDo: [ :c | 
	c horizontal matchParent  .
	c vertical fitContent
];
background: Color veryVeryDarkGray ;
layout: BlLinearLayout vertical ."


mainWorkspace := BlElement  new constraintsDo: [ :c | 
	c horizontal matchParent .
	c vertical fitContent 
]; "clipChildren: false ;"
background: BlTransparentBackground new "Color veryVeryDarkGray" ;
layout: "BlFlowLayout"  BlLinearLayout horizontal "vertical alignCenter" .







workPane  := BlElement  new constraintsDo: [ :c | 
	c horizontal matchParent "fitContent" .
	c vertical fitContent 
]; 
background: BlTransparentBackground new ;
layout: BlLinearLayout vertical .


"mainWorkspace constraintsDo: [ :c |
		c frame horizontal alignCenter.
]."


self addChild: mainWorkspace "asScalableElement".

self addChild: workPane.






"addEventHandler: BlPullHandler new allowOutOfBounds" .


"el := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent  ].

el layout: BlLinearLayout vertical .
el clipChildren: false ."

proofToDo eHypoths do: [ :ea | | ehypoth |
	
	"ea setCompleted ."
	ehypoth := MmOnBoardEssentialHypothesisElement new model: ea .
	
	aEventListener := MmOnBoardHypothEventListener new gameController: controller .
	ehypoth addEventHandler: aEventListener .
	
	mainWorkspace addChild: ehypoth .
	
] .

aEventListener := MmProofResultListener new gameController: controller .
wantedResultElement := (MmWantedResultElement new initializeWith: proofToDo)  addEventHandler: aEventListener .

wantedResultElement constraintsDo: [ :c |
		c linear horizontal alignRight.
].

mainWorkspace addChild: BlElement new .

mainWorkspace addChild: wantedResultElement .

"el constraintsDo: [ :c |

		c frame horizontal alignLeft.
		c frame vertical alignTop .
]."

"currentlySelectedElement addChildFirst: el ."


"proofSpace  addChild: el ."




"proofSpace  addChild: currentlySelectedElement ."




"self addChild: mainWorkspace asScalableElement ."

"self addChild: proofSpace asScalableElement."

"mainWorkspace addChild: proofSpace ."

workPane addChild: BlElement new .

self addUsable .



"self addOnBoardUsableEHypoths ."

"self addEventHandler: MmBoardListener new  ."



	aSpace := BlSpace new
		extent: 1000@900;
		title: proofToDo name .
	aSpace root addChild: self .
	aSpace show.

