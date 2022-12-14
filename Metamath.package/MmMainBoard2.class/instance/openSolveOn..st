initialization
openSolveOn: aProofModel
	
| aText textElement |

proofToDo := aProofModel copy.
	
proofToDo setAllVariablesToFixed.


Transcript clear .

Transcript next
		tab;
		color: Color red;
		fontSize: 28;
		putAll: proofToDo ;
		cr.
		
				
"Transcript show: proofToDo ; cr ; show: ' trying '; cr ."
				


wantedResultElement := MmWantedResultElement new initializeWith: proofToDo .
wantedResultElement addBoardHandler.
wantedResultElement  announcer when: MmWantedSelectedAnnouncement send: #wantedSelected: to: self.



				
				
"BlElement new constraintsDo: [ :c | c textFlow pushLine ];
						size: snapshot extent;
						background: snapshot "

wantedResultElement
	constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignTop ].
			
self  addChild:  wantedResultElement.
	
	
	aText := proofToDo name asRopedText .
	aText fontSize: 42.
	aText foreground: Color gray .
	textElement := (BlTextElement text: aText) .

	hypothPane addChild: textElement .


	"proofToDo eHypoths
		do: [ :ea | 
				| ehypoth |
				ea setAsComplete .
				ehypoth := MmOnBoardEssentialHypothesisElement new initializeWith:  ea .
				
				ehypoth addBoardHandler .
				
				ehypoth announcer when: MmUseableSelectedAnnouncement send: #usableSelected: to: self.
			
				hypothPane addChild: ehypoth .
		]."
		
		self addAllUsableAssertionsToLeftpane2.
	