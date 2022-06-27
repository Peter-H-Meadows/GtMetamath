main
pairSelected
	"selectedWantedElement must be ehypoth of assertion.
	selectedUsableElement could be assertion or usable ehypoth"

	
	"selectedWantedElement model owner isPartDone ifFalse: ["

		board addToTopPane: selectedWantedElement model owner.
	
	"]."
	
	"selectedUsableElement removeFromParent."

	selectedUsableElement unhighlightAsSelected.
	
	selectedWantedElement unhighlightAsSelected.
	
	"self halt ."
	
	selectedUsableElement isFixedEHypoth ifTrue: [
		selectedUsableElement := MmOnBoardEssentialHypothesisElement new model: selectedUsableElement model .
	
	].
	
	
	selectedWantedElement tryMakeWithEl: selectedUsableElement.
"
	selectedWantedElement model owner isComplete
		ifTrue: [ finalResultWanted body body = selectedWantedElement model owner body body 
				ifTrue: [ selectedWantedElement success ] ]."

				
selectedUsableElement := nil.
selectedWantedElement := nil.
