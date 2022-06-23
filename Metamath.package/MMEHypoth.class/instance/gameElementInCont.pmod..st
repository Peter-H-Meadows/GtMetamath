accessing
gameElementInCont: controller pmod: p

| el aEventListener |

pmod := p .

"el := MmEssentialHypothesisElement new model: self ; name: name ; body: body gameElement ."

el := MmEssentialHypothesisElement new initializeWith: self .
el controller: controller .

aEventListener := MmOnBoardWantedEventListener new gameController: controller .
el addEventHandler: aEventListener .
	
"el constraintsDo: [ :c | c linear horizontal  alignCenter ]."

el constraintsDo: [ :co |
			co horizontal matchParent ];
		background: BlTransparentBackground new .


^ el