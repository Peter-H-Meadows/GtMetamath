main
usableClickedFromBoard: el 
"self halt."
selectedUsableElement := el .
selectedUsableElement highlightAsSelected .

selectedUsableElement removeFromParent.
board workPane addChild: selectedUsableElement.

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


