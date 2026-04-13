as yet unclassified
addEhypothPane


	
	eHypothPane := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent.
				"c frame horizontal alignLeft.
				c frame vertical alignBottom" ];
			layout: BlLinearLayout vertical.
			
			eHypothPane constraintsDo: [ :c |
			c frame horizontal alignRight .
			c frame vertical alignTop ].

	proofToDo eHypoths
		do: [ :ea | 
				| ehypoth |
				ea setAsComplete .
				ehypoth := MmOnBoardEssentialHypothesisElement new initializeWith:  ea .
				
				ehypoth constraintsDo: [ :c |
			c frame horizontal alignRight .
			c frame vertical alignTop ].
					"MmEssentialHypothesisElement" 
				
				"ehypoth addBoardHandler ."
				
				ehypoth announcer when: MmUseableSelectedAnnouncement send: #usableSelected: to: self.
			
				"hypothPane addChild: ehypoth ."
				
				eHypothPane addChild: ehypoth .
		].
		
		self addChild: eHypothPane .
		