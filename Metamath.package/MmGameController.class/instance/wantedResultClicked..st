main
wantedResultClicked: el 
	
selectedWantedElement := el .
	
selectedUsableElement isNil ifTrue: [ ^ self ] .
	
selectedUsableElement model canMapTo: selectedWantedElement model.
	
selectedUsableElement unhighlightAsSelected .
selectedWantedElement unhighlightAsSelected .
selectedUsableElement := nil .
selectedWantedElement := nil .

"
selectedUsableElement class = MmOnBoardEssentialHypothesisElement ifFalse: [
	
	board addToMain: selectedUsableElement model .

] .

selectedWantedElement tryMakeWithEl: selectedUsableElement ."

"selectedWantedElement tryMakeWithEl: selectedUsableElement .	"