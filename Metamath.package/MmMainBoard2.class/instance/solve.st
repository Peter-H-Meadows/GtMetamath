accessing
solve
| prevs uel cp axmpp |

	prevs := proofToDo prevAssertions collect: #reparse .
	MmEhyp prevs: (proofToDo prevAssertions collect: #reparse) .
	
	"prevs at: 'mpdd'}"
	
	"( proofToDo returnMappableFrom: prevs ) do: [ :ea | "
	
			
			
			axmpp := prevs at: 'ax-mp' .
			
			axmpp essentialHypoths first class remFixedEhypoths: proofToDo essentialHypoths first .
	
			uel :=  axmpp vcopy gameElementWithEhypoths.
			
			uel addBoardHandler: self .
			
			workPane addChild: uel .
			
			"(ea tryMakeEhypothsWith: proofToDo essentialHypoths) "
			{}
				do: [:eh |
				
					"eh essentialHypoths first canMapTo: ea vcopy ."
					uel :=  eh "gameElement" gameElementWithEhypoths.
					
					"ea canMapTo: eh ."
			
					workPane addChild: uel.
					
				].
	"]."