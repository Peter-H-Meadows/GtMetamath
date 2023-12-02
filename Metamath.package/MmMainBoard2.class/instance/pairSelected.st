accessing
pairSelected
	selectedUsableElement unhighlightAsSelected.
	selectedWantedElement unhighlightAsSelected.
	
	"self halt ."
	
	selectedWantedElement tryMakeWithEl: selectedUsableElement.
	
	selectedUsableElement := nil.
	selectedWantedElement := nil.