accessing
solve
| prevs uel cp |

	prevs := proofToDo prevAssertions collect: #reparse .
	MmEhyp prevs: (proofToDo prevAssertions collect: #reparse) .
	
	""
	
	(proofToDo returnMappableFrom: prevs "at: 'mpdd'}") do: [:ea | 
	
			uel :=  ea vcopy gameElementWithEhypoths.
			
			uel addBoardHandler: self .
			
			workPane addChild: uel .
			"self halt."
			"cp := ea vcopy .
			
			(cp tryMakeEhypothsWith: proofToDo essentialHypoths) 
				do: [:high |
				
					uel :=  high gameElementWithEhypoths.
			
					workPane addChild: uel.
					
				]."
	].