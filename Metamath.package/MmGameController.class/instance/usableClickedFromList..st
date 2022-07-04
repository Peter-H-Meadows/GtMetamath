accessing
usableClickedFromList: anAssertionAndEssentialHypothesisElement 
	| c |
	c := (AssertionAndEssentialHypothesisElement new initializeWith: anAssertionAndEssentialHypothesisElement model copy) addHandlersController: self.

c constraintsDo: [ :cc |
			"cc  horizontal alignRight."
			"c frame vertical alignCenter" ].
board workPane addChild: c.