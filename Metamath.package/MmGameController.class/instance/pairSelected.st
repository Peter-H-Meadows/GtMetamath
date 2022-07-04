main
pairSelected
	"selectedWantedElement must be ehypoth of assertion.
	selectedUsableElement could be assertion or usable ehypoth"

	| c |
	selectedUsableElement unhighlightAsSelected.
	selectedWantedElement unhighlightAsSelected.

	selectedUsableElement isFixedEHypoth
		ifTrue: [ selectedUsableElement := MmOnBoardEssentialHypothesisElement new
					model: selectedUsableElement model.
					
				c := (AssertionAndEssentialHypothesisElement new
							initializeWith: selectedWantedElement model owner copy) addHandlersController: self.


					board leftPane addChild: c.

					
			selectedWantedElement tryMakeWithEl: selectedUsableElement.
			^ self ].

selectedWantedElement tryMakeWithEl: selectedUsableElement.

	selectedUsableElement.

	selectedUsableElement parent removeFromParent.

	board workPane addChild: selectedUsableElement parent.	
	
	"copy of selectedWantedElement model owner."	"(selectedWantedElement model owner copy assertionAndEssentialHypothesisElement: self) ."	"selectedWantedElement model owner isPartDone ifFalse: ["	"
		board addToWorkPane: selectedWantedElement model owner."	"]."	"
	selectedWantedElement model owner isComplete
		ifTrue: [ finalResultWanted body body = selectedWantedElement model owner body body 
				ifTrue: [ selectedWantedElement success ] ]."


	selectedUsableElement := nil.
	selectedWantedElement := nil