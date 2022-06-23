accessing
eHypothClicked: el

selectedUsableElement := el .

selectedUsableElement highlightAsSelected .
	
selectedWantedElement ifNotNil: [  
	
	selectedWantedElement tryMakeWithEl: selectedUsableElement "model" "forUsing" .
	
	selectedUsableElement unhighlightAsSelected  .
	selectedWantedElement unhighlightAsSelected .
	
	selectedUsableElement := nil .
	selectedWantedElement := nil .
	
] .