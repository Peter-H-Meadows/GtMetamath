instance creation
openOnxxx: aProofModel 

|  aEventListener el aSpace |

proofToDo := aProofModel "copyAndClean" setAllVariablesToFixed .
proofToDo setEhypothsAsCompleted .


self background: "BlTransparentBackground new" Color veryVeryDarkGray .

controller := MmGameController new  board: self .


"proofSpace := BlElement  new constraintsDo: [ :c | 
	c horizontal matchParent  .
	c vertical fitContent
];
background: Color veryVeryDarkGray ;
layout: BlLinearLayout vertical ."


mainWorkspace := BlElement  new constraintsDo: [ :c | 
	c horizontal "matchParent" fitContent .
	c vertical fitContent 
]; "clipChildren: false ;"
background: BlTransparentBackground new "Color veryVeryDarkGray" ;
layout: BlLinearLayout vertical alignCenter .



"mainWorkspace constraintsDo: [ :c |
		c frame horizontal alignCenter.
]."









"addEventHandler: BlPullHandler new allowOutOfBounds" .


el := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent  ].

el layout: BlLinearLayout vertical "alignCenter" .
el clipChildren: false .

proofToDo eHypoths do: [ :ea | | eee |
	
	"ea setCompleted ."
	eee := MmOnBoardEssentialHypothesisElement new model: ea .
	
	aEventListener := MmOnBoardHypothEventListener new gameController: controller .
	eee addEventHandler: aEventListener .
	
	el addChild: eee .
	
] .

"el constraintsDo: [ :c |

		c frame horizontal alignLeft.
		c frame vertical alignTop .
]."

"currentlySelectedElement addChildFirst: el ."


"proofSpace  addChild: el ."


aEventListener := MmProofResultListener new gameController: controller .

currentlySelectedElement := (MmWantedResultElement new initializeWith: proofToDo)  addEventHandler: aEventListener .

"currentlySelectedElement constraintsDo: [ :c |
		c linear horizontal alignRight.
]."


mainWorkspace addChild: currentlySelectedElement .

"proofSpace  addChild: currentlySelectedElement ."




"self addChild: mainWorkspace asScalableElement ."

"self addChild: proofSpace asScalableElement."

"mainWorkspace addChild: proofSpace ."

self addUsable .

self addChild: mainWorkspace "asScalableElement".

self addOnBoardUsableEHypoths .

"self addEventHandler: MmBoardListener new  ."



	aSpace := BlSpace new
		extent: 1400@800;
		title: proofToDo name .
	aSpace root addChild: self .
	aSpace show.

