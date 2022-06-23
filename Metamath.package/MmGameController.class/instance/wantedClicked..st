main
wantedClicked: el

"wanted thing could be the final result, or an ehypoth we want to make."
"
selectedWantedElement unhighlightAsSelected ."

selectedWantedElement := el .



selectedUsableElement ifNil: [
	"selectedUsableElement := el ."
 selectedWantedElement highlightAsSelected .

 ^ self


] ifNotNil: [

	self pairSelected.

		
	
].
	
"selectedUsableElement  isSelected  ifFalse: [  ^ self ] .
	
selectedUsableElement unhighlightAsSelected .
selectedWantedElement unhighlightAsSelected .

board addToMain: selectedWantedElement model owner .

selectedWantedElement tryMakeWithEl: selectedUsableElement ."

	


