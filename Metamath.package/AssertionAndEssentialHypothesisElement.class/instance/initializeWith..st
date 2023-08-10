accessing
initializeWith: assertion
	
	| el divElement |
	
	model := assertion .
	
	"self addEventHandler: MmP new ."
	
	self addMenu.
	
	model eHypoths "reverse" do: [ :ea | 
		
		el := MmEssentialHypothesisElement new initializeWith: ea  .
	
		el constraintsDo: [ :co |
				co horizontal matchParent ] .
		
		hypothBox addChild: el .
		
	] .
	
	"(ea gameElementInCont: con pmod: model )"
	
	divElement := BlElement new
			constraintsDo: [ :co |
				co horizontal exact: 4.
				co vertical matchParent ];
			background: Color black .
	
	self addChild: divElement.
	
	"self halt."
	
	resultElement := assertion gameElement "constraintsDo: [ :c | c linear vertical alignCenter ]" .
	
	"aEventListener := MmOnBoardUsableEventListener new gameController: con .
	self addEventHandler: aEventListener ."
	
	self addChild: resultElement.
	
	self addChild: selectedMarkerElement.
	
	model announcer when: #complete send: #complete: to: self.
	
	model announcer when: #allDone send: #allDone: to: self.