main
usableClickedFromBoard: el 

selectedUsableElement := el .
selectedUsableElement highlightAsSelected .


selectedWantedElement ifNil: [
	"selectedUsableElement ifNotNil: [ selectedUsableElement unhighlightAsSelected ]."
	
	^ self

] ifNotNil: [

	self pairSelected.

	"	selectedUsableElement unhighlightAsSelected .
	selectedWantedElement unhighlightAsSelected .
	board addToMain: el model .	
	selectedWantedElement tryMakeWithEl: selectedUsableElement ."
	
].


