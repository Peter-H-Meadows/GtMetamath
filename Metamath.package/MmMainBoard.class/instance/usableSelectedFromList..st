accessing
usableSelectedFromList: ann
	
	""
	
	self halt.
	
	
	"ann element model hasEhypoths ifTrue: ["
	
"		ann element unhighlightAsSelected .
	
		x := 
			AssertionAndEssentialHypothesisElement new initializeWith: ann element model copy .

 		workPane addChild: x.
 		
		x hypothElements do: [:ea | 
			ea announcer when: MmWantedSelectedAnnouncement send: #wantedSelected: to: self.
		] ."
	
	"] ifFalse: [ selectedUsableElement := ann element . ]"
	
