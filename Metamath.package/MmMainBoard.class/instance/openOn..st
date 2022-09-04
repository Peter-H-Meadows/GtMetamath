initialization
openOn: aProofModel
	
| cc aText textElement |

	proofToDo := aProofModel copy.
	
proofToDo setAllVariablesToFixed.


wantedResultElement := MmWantedResultElement new initializeWith: proofToDo .
wantedResultElement addBoardHandler.
wantedResultElement  announcer when: MmWantedSelectedAnnouncement send: #wantedSelected: to: self.

wantedResultElement
	constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignTop ].
			
self  addChild:  wantedResultElement.
	
"size: 200@200;"
"constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignTop ]."

	proofToDo comments do: [ :ea |  cc := ea gameElement ].
	
	"cc := MmCommentElement new createFromString: proofToDo name ."
	
	cc constraintsDo: [ :c |
			c frame vertical alignBottom ].
	self addChild: cc.
	
	
	aText := proofToDo name asRopedText .
	aText fontSize: 42.
	aText foreground: Color gray .
	textElement := (BlTextElement text: aText) .

	hypothPane addChild: textElement asScalableElement.


	proofToDo eHypoths
		do: [ :ea | 
				| ehypoth |
				ea setAsComplete .
				ehypoth := MmOnBoardEssentialHypothesisElement new initializeWith:  ea .
				
				ehypoth addBoardHandler .
				
				ehypoth announcer when: MmUseableSelectedAnnouncement send: #usableSelected: to: self.
			
				hypothPane addChild: ehypoth .
		].
		
		self addUsableAssertionsToLeftpane.
	