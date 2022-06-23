as yet unclassified
unSelectUsable

"selectedWantedElement := el toggleSelected .
	
selectedWantedElement ifNil: [ ^ self ] ."
	
	
selectedUsableElement ifNotNil: [  
		
	selectedUsableElement unhighlightAsSelected  .
	
	selectedUsableElement := nil .
	
	] .

