adding
addOnBoardUsableEHypoths

| el aEventListener |
el := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent  ].

el layout: BlLinearLayout vertical "alignCenter" .
"el clipChildren: false ."

proofToDo eHypoths do: [ :ea | | eee |
	
	"ea setCompleted ."
	eee := MmOnBoardEssentialHypothesisElement new model: ea .
	
	aEventListener := MmOnBoardHypothEventListener new gameController: controller .
	eee addEventHandler: aEventListener .
	el addChild: eee .
	
] .

el constraintsDo: [ :c |

		c frame horizontal alignLeft.
		c frame vertical alignTop .
].

self addChild: el .