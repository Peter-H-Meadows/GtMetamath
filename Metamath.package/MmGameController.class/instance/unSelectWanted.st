as yet unclassified
unSelectWanted

"selectedWantedElement := el toggleSelected .
	
selectedWantedElement ifNil: [ ^ self ] ."
	
	
selectedWantedElement ifNotNil: [  
		
	selectedWantedElement unhighlightAsSelected  .
	
	selectedWantedElement := nil .
	
	] .

