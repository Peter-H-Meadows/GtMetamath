accessing
usableSelected: ann
	
	"self halt."
	
	selectedUsableElement := ann element .
	
	ann element model hasEhypoths ifTrue: [
	
		ann element unhighlightAsSelected .
	
		selectedUsableElement := 
			AssertionAndEssentialHypothesisElement new initializeWith: ann element model copy .

 		workPane addChild: selectedUsableElement.
	
	].
	
