setup
setupForProving: aProofModel

| mmodel look aEventListener el |

proofToDo := aProofModel copyAndClean setAllVariablesToFixed .

self background: Color veryVeryDarkGray .


"workingOnList := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent
]; 
background: BlTransparentBackground new;
layout: BlLinearLayout vertical .

aPannableElement := workingOnList asPannableElement clipChildren: false.

aPannableElement constraintsDo: [ :c | 
	c horizontal  fitContent  .
	c vertical   fitContent
]."


	"mmodel := BrWithContextMenuModel new
		stencil: [ BlElement new
				look:
					(BrGlamorousContextMenuLook new
						content:
							(BrGlamorousSimpleContextMenuContent new
								items:
{
('zoom in'  -> [ :e | aPannableElement zoomIn ]).
									
('zoom out' -> [ :e | aPannableElement zoomOut ]).

('inspect self' -> [ :e | self inspect ])
};

								yourself);
						yourself);
				yourself ];
		yourself.


	look := BrWithContextMenuLook new.

	self viewModel: mmodel.
	self look: look ."


"xx look:  BrGlamorousWithVerticalResizerLook + BrGlamorousWithHorizontalResizerLook."

"self addChild: aPannableElement."

mainWorkspace := BlElement  new constraintsDo: [ :c | 
	c horizontal fitContent  .
	c vertical fitContent 
]; clipChildren: false ;
background: Color veryVeryDarkGray ;
layout: BlLinearLayout vertical .

mainWorkspace constraintsDo: [ :c |
		c frame horizontal alignCenter.
		c frame vertical alignCenter ].

"mainWorkspace addChild: topBoard ."

self addChild: mainWorkspace "asScalableElement" .

"self addUsableThingsLists."



"usableTurnstiles := proofToDo eHypoths . 
usableWFFs := OrderedCollection new."

proofToDo assertionsUsed reverseDo: [ :each | | thing |
	
	thing := proofToDo prevAssertions at: each .

	thing body isWFF ifTrue: [
			

	] ifFalse: [ 
	

"self addToList: usable ."

"workingOnList" 

			mainWorkspace addChild: (thing copyAndClean  assertionAndEssentialHypothesisElement: controller) .	
	
		"thing setAllVariablesToFree.
		usableTurnstiles add: thing ."	
				
	]. 
] .





aEventListener := MmListUsableEventListener new gameController: controller  .
"el := proofToDo eHypoths first elementForStartingList addEventHandler: aEventListener ."

"el := BrVerticalPane new ."
el := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent  ].

el layout: BlLinearLayout vertical alignCenter .
el clipChildren: false .

"proofToDo eHypoths do: [ :ea | el addChild: (ea elementForStartingList addEventHandler: aEventListener ) ] ."

proofToDo eHypoths do: [ :ea | el addChild: (ea  assertionAndEssentialHypothesisElement: controller ) ] .

el constraintsDo: [ :c |

		c frame horizontal alignLeft.
		c frame vertical alignTop .
			"c horizontal fitContent .
	c vertical fitContent"
].



"middleThings := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent  ].

middleThings layout: BlLinearLayout vertical alignCenter .

mainWorkspace addChild: middleThings asPannableElement ."


aEventListener := MmProofResultListener new gameController: controller .

"currentlySelectedElement := proofToDo onBoardGameElement addEventHandler: aEventListener ."

currentlySelectedElement := (MmEssentialHypothesisElement new initializeWith: proofToDo)  addEventHandler: aEventListener .

currentlySelectedElement constraintsDo: [ :c |

		c frame horizontal alignRight.
		c frame vertical alignTop.
].


"mainWorkspace addChild: currentlySelectedElement"  "addEventHandler: BlPullHandler new allowOutOfBounds" .

self  addChild: currentlySelectedElement .

self addChild: el .

	"parent := self parentWithFrameLayoutAndFixedSize.	
	parent size: 300@300.
	parent addChild: child.
	
	parent forceLayout."
