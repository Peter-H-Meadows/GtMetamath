main
usableClickedFromBoard: el 

	"self halt."

	selectedUsableElement := el .
selectedUsableElement highlightAsSelected .

"selectedUsableElement removeFromParent."

"
usableAssertion cloneVarsFrom: proofToDo ."

"c := (AssertionAndEssentialHypothesisElement new initializeWith: el model copy) addHandlersController: self.


board workPane addChild: c."
"
board workPane addChild: selectedUsableElement."




selectedWantedElement ifNil: [
	
	^ self

] ifNotNil: [

	self pairSelected.

].


