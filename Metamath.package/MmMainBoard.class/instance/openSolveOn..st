initialization
openSolveOn: aProofModel
	
| aText textElement |

proofToDo := aProofModel copy.
	
proofToDo setAllVariablesToFixed.


wantedResultElement := MmWantedResultElement new initializeWith: proofToDo .
wantedResultElement addBoardHandler.
wantedResultElement  announcer when: MmWantedSelectedAnnouncement send: #wantedSelected: to: self.

wantedResultElement
	constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignTop ].
			
self  addChild:  wantedResultElement.
	
	
	aText := proofToDo name asRopedText .
	aText fontSize: 42.
	aText foreground: Color gray .
	textElement := (BlTextElement text: aText) .

	hypothPane addChild: textElement "asScalableElement".


	proofToDo eHypoths
		do: [ :ea | 
				| ehypoth |
				ea setAsComplete .
				ehypoth := MmOnBoardEssentialHypothesisElement new initializeWith:  ea .
				
				ehypoth addBoardHandler .
				
				ehypoth announcer when: MmUseableSelectedAnnouncement send: #usableSelected: to: self.
			
				hypothPane addChild: ehypoth .
		].
		
		self addAllUsableAssertionsToLeftpane2.
	