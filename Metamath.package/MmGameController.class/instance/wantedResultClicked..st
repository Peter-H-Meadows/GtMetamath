main
wantedResultClicked: el 
	
selectedWantedElement := el .
	
selectedUsableElement isNil ifTrue: [ ^ self ] .
	
selectedUsableElement unhighlightAsSelected .
selectedWantedElement unhighlightAsSelected .
"
selectedUsableElement class = MmOnBoardEssentialHypothesisElement ifFalse: [
	
	board addToMain: selectedUsableElement model .

] .

selectedWantedElement tryMakeWithEl: selectedUsableElement ."




	
"selectedWantedElement tryMakeWithEl: selectedUsableElement .	"
		
"(selectedUsableElement model canMapTo: selectedWantedElement model)" 
"ifFalse: [ self background: Color red ]".
	
"selectedUsableElement := nil .
selectedWantedElement := nil ."
	

