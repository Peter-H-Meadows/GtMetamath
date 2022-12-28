accessing
usableSelected: ann
	"self halt."
	selectedUsableElement  ifNotNil: [ selectedUsableElement unhighlightAsSelected ] .
	
	selectedUsableElement := ann element .
	
	selectedWantedElement ifNotNil: [ self pairSelected ]
	
	"ann element model hasEhypoths ifTrue: [
	
		ann element unhighlightAsSelected .
	
		selectedUsableElement := 
			AssertionAndEssentialHypothesisElement new initializeWith: ann element model copy .

 		workPane addChild: selectedUsableElement.
 		
	selectedUsableElement hypothElements do: [:ea | ea announcer when: MmWantedSelectedAnnouncement send: #wantedSelected: to: self ] .
	
	]."
	
