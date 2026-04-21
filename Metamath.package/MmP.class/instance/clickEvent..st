accessing
clickEvent: ev
	"addBoardHandler: workPane."
	
	|  proofToDo el  |
	proofToDo := ev currentTarget model vcopy "setAllVariablesToFixed" .

		el := AssertionAndEssentialHypothesisElement new initializeWith: proofToDo.
		
		gameController workPane addChild: el asScalableElement.
		
		el addEventHandler: MmBoardListener new.
el announcer
				when: MmWantedSelectedAnnouncement
				send: #usableSelected:
				to: gameController.
				
				
		el	hypothBox
		childrenDo: [ :ell | 
			ell mainBoard: gameController .
			ell addEventHandler: MmBoardListener new.
			ell announcer
				when: MmWantedSelectedAnnouncement
				send: #wantedSelected:
				to: gameController ].	