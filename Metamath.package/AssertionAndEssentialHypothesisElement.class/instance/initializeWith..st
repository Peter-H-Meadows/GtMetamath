accessing
initializeWith: assertion

| el divElement |

model := assertion .

self addMenu.
"model fHypoths reverse do: [ :ea | 
	
	el := MmFloatingHypothesisElement new initializeWith: ea  .

	el constraintsDo: [ :co |
			co horizontal matchParent ];
		background: BlTransparentBackground new .
	
	hypothBox addChild: el .
	
] ."

model eHypoths reverse do: [ :ea | 
	
	el := MmEssentialHypothesisElement new initializeWith: ea  .

	el constraintsDo: [ :co |
			co horizontal matchParent ]";
		background: BlTransparentBackground new" .
	
	hypothBox addChild: el    .
	
] .

"(ea gameElementInCont: con pmod: model )"

divElement := BlElement new
		constraintsDo: [ :co |
			co horizontal exact: 2.
			co vertical matchParent ];
		background: Color black .

self addChild: divElement.

resultElement := assertion gameElement constraintsDo: [ :c | c linear vertical alignCenter ] .
"aEventListener := MmOnBoardUsableEventListener new gameController: con .
self addEventHandler: aEventListener ."
self addChild: resultElement.

"selectedMarkerElement := BlElement new
		constraintsDo: [ :co |
			co horizontal exact: 4.
			co vertical matchParent ];
		background: BlTransparentBackground new.

self addChild: selectedMarkerElement."

"anAccordion toggle."

	"anAccordion header: [
		BrButton new
			look: BrGlamorousAccordionHeaderLook new;
			label: model name printString;
			action: [ anAccordion toggle ] ].
			
	anAccordion expand."
	
	"self halt ."