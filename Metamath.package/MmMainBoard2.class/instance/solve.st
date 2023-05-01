accessing
solve
| prevs uel cp axmpp |

	prevs := proofToDo prevAssertions collect: #vcopy .
	MmEhyp prevs: (proofToDo prevAssertions collect: #reparse) .
	
	"prevs at: 'mpdd'}"
	
	( proofToDo returnMappableFrom: prevs ) do: [ :ea | 
	
		uel :=  ea vcopy gameElementWithEhypoths.
			
		uel addBoardHandler: self .
			
		workPane addChild: uel .
	].
			
			
			"ea := prevs at: 'ax-mp' ."
			
			"ea essentialHypoths first class remFixedEhypoths: proofToDo essentialHypoths first ."
			
			"(ea tryMakeEhypothsWith: proofToDo essentialHypoths) "
			{}
				do: [:eh |
				
					"eh essentialHypoths first canMapTo: ea vcopy ."
					uel :=  eh "gameElement" gameElementWithEhypoths.
					
					"ea canMapTo: eh ."
			
					workPane addChild: uel.
					
				].
	"]."