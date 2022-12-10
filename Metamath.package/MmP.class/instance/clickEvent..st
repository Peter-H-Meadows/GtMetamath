accessing
clickEvent: ev
	"addBoardHandler: workPane."
	
	| prevs proofToDo uel cp |
	proofToDo := ev currentTarget model "reparse setAllVariablesToFixed" .
	
	prevs := proofToDo prevAssertions collect: #reparse .
	"proofToDo g: prevs ."
	
	MmEhyp prevs: (proofToDo prevAssertions collect: #reparse) .
	
	(proofToDo returnMappableFrom: prevs) do: [:ea | 
	
			uel :=  ea gameElementWithEhypoths.
			
			ev currentTarget addChild: uel.
			
			self halt.
			
			cp := ea vcopy .
			
			ea tryMakeEhypothsWith: proofToDo essentialHypoths.
			
			uel :=  cp gameElementWithEhypoths.
			
			ev currentTarget addChild: uel.
			
			
		].