accessing
clickEvent: ev
			"| el workPane |
	el := 
			AssertionAndEssentialHypothesisElement new initializeWith: ev currentTarget model copy .
	el addBoardHandler: workPane."
	
	| prevs proofToDo uel |
	proofToDo := ev currentTarget model copy .
	
	prevs := proofToDo prevAssertions collect: #reparse .
	"proofToDo g: prevs ."
	
	MmEhyp prevs: (proofToDo prevAssertions collect: #reparse) .
	
	(proofToDo returnMappableFrom: prevs) do: [:ea | 
	
		"ea inspect."
			uel :=  ea gameElementWithEhypoths.
			
			ev currentTarget addChild: uel
		].