accessing
usableBasicAssertionFromListClicked: mod
self halt.
board addToWorkingBoard: mod.


"selectedWantedElement ifNil: [ 
	
	self addToWorkingBoard: mod copyAndClean . 
	
] ifNotNil: [
	
	selectedWantedElement tryMakeWith2: mod copyAndClean .
	selectedWantedElement unhighlightAsSelected .
	
	selectedUsableElement := nil .
	selectedWantedElement := nil .
	
]."