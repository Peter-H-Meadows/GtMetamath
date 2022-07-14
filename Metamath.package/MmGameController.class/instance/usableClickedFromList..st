accessing
usableClickedFromList: anAssertionAndEssentialHypothesisElement 
	| c |
	c := (AssertionAndEssentialHypothesisElement new initializeWith: anAssertionAndEssentialHypothesisElement model copy) addHandlersController: self.

board workPane addChild: c.