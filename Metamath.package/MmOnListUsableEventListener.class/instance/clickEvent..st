accessing
clickEvent: ev
			| el |
	el := 
			AssertionAndEssentialHypothesisElement new initializeWith: ev currentTarget model copy .
	el addBoardHandler: workPane.
	
	el constraintsDo: [:c | c linear horizontal  alignLeft].
			
	
 		workPane workPane addChild: el.
 		
		"el hypothElements do: [:ea | 
			ea announcer when: MmWantedSelectedAnnouncement send: #wantedSelected: to: self.
		] ."