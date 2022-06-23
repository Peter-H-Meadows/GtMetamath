accessing
gameElementInCont: controller

| el aEventListener |
"el := MmEssentialHypothesisElement new model: self ; name: name ; body: body gameElement ."

el := MmEssentialHypothesisElement new initializeWith: self .
el controller: controller .

aEventListener := MmOnBoardWantedEventListener new gameController: controller .
el addEventHandler: aEventListener .
	
"el constraintsDo: [ :c | c linear horizontal  alignCenter ]."


^ el