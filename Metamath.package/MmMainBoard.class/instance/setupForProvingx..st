setup
setupForProvingx: aProofModel

| aEventListener xx mmodel look anAccordion |
proofToDo := aProofModel copyAndClean setAllVariablesToFixed .

self background: Color white .

workingOnList := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent
]; 
background: BlTransparentBackground new;
layout: BlLinearLayout vertical .

aPannableElement := workingOnList asPannableElement clipChildren: false.

aPannableElement constraintsDo: [ :c | 
	c horizontal  fitContent  .
	c vertical   fitContent
].

"clipChildren: false ;"

	mmodel := BrWithContextMenuModel new
		stencil: [ BlElement new
				look:
					(BrGlamorousContextMenuLook new
						content:
							(BrGlamorousSimpleContextMenuContent new
								items:
{
('zoom in'  -> [ :e | aPannableElement zoomIn ]).
									
('zoom out' -> [ :e | aPannableElement zoomOut ]).

('inspect self' -> [ :e | self inspect	"e background: Color green" ])
};

								yourself);
						yourself);
				yourself ];
		yourself.


	look := BrWithContextMenuLook new.

	self viewModel: mmodel.
	self look: look .


"xx look:  BrGlamorousWithVerticalResizerLook + BrGlamorousWithHorizontalResizerLook."

self addChild: aPannableElement.

self addUsableThingsLists.



"mainWorkspace := BlElement  new constraintsDo: [ :c | 
	c horizontal matchParent  .
	c vertical matchParent 
];
background: Color veryVeryDarkGray ;
layout: BlLinearLayout vertical ."

"mainWorkspace addChild: topBoard .

self addChild: mainWorkspace ."

"middleThings := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent  ].

middleThings layout: BlLinearLayout vertical alignCenter .

mainWorkspace addChild: middleThings asPannableElement ."

aEventListener := MmProofResultListener new gameController: controller .
currentlySelectedElement := proofToDo onBoardGameElement addEventHandler: aEventListener .
"currentlySelectedElement constraintsDo: [ :c | 
c frame horizontal alignRight.
	  ] ."
currentlySelectedElement controller: controller . currentlySelectedElement background: Color white .

workingOnList  addChild: currentlySelectedElement .

"aPannableElement translateBy: 600@400 ."
aPannableElement transform
		"inherit;"
		origin: (BlAffineTransformationPositionOrigin position: 0@0);
		translateBy: (BlVector x: 200 y: 400 z: 0);
		apply .
		
"self halt ."
aEventListener := MmBoardListener new  .
self addEventHandler: aEventListener .
