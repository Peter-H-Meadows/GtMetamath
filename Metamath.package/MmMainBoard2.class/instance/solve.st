accessing
solve
| prevs uel cp |

	prevs := proofToDo prevAssertions collect: #reparse .
	MmEhyp prevs: (proofToDo prevAssertions collect: #reparse) .
	
	self halt.
	
	(proofToDo returnMappableFrom: {prevs at: 'mpd'}) do: [:ea | 
	
			uel :=  ea gameElementWithEhypoths.
			
			workPane addChild: uel .
			
			"ev currentTarget addChild: uel."
			
			
			
			cp := ea vcopy .
			
			(cp tryMakeEhypothsWith: proofToDo essentialHypoths) 
				do: [:high |
				
					uel :=  high gameElementWithEhypoths.
			
					workPane addChild: uel.
					
					self halt.
				].
	].