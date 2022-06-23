accessing
onBoardeHypothClicked: el

"selectedUsableElement unhighlightAsSelected ."
selectedUsableElement := el .

"self halt."

selectedWantedElement ifNil: [
	selectedUsableElement := el .
 selectedUsableElement highlightAsSelected .

 ^ self


] ifNotNil: [ 

	self pairSelected.
].
	
"selectedWantedElement isSelected  ifFalse: [  ^ self ] .
	
selectedUsableElement unhighlightAsSelected .
selectedWantedElement unhighlightAsSelected .

board addToMain: selectedWantedElement model owner copy reparse ."
	
"selectedWantedElement tryMakeFromOnBoardeHypothEl: selectedUsableElement  ."

"selectedWantedElement tryMakeWithEl: selectedUsableElement  ."