initialization
openOn: aProofModel
	
| cc |
	
"proofToDo setAllVariablesToFixed."

proofToDo := aProofModel vcopy .

"self halt."
proofToDo variables do: #setAsFixed .

wantedResultElement := MmWantedResultElement new initializeWith: proofToDo .
wantedResultElement addBoardHandler.
wantedResultElement  announcer when: MmWantedSelectedAnnouncement send: #wantedSelected: to: self.

wantedResultElement
	constraintsDo: [ :c |
			c frame horizontal alignRight "alignCenter".
			c frame vertical alignBottom ].
			
self  addChild:  wantedResultElement.

"workPane addChild: proofToDo gameElementWithEhypoths ."
	
"size: 200@200;"
"constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignTop ]."

	"proofToDo comments do: [ :ea |  cc := ea gameElement ]."
	
	"cc := MmCommentElement new createFromString: proofToDo name ."
	
	"cc constraintsDo: [ :c |
			c frame vertical alignBottom ].
	self addChild: cc."
	
	
	"aText := proofToDo name asRopedText .
	aText fontSize: 42.
	aText foreground: Color gray .
	textElement := (BlTextElement text: aText) .

	hypothPane addChild: textElement asScalableElement."


	proofToDo eHypoths
		do: [ :ea | 
				| ehypoth |
				ea setAsComplete .
				ehypoth := MmOnBoardEssentialHypothesisElement
				
					"MmEssentialHypothesisElement" new initializeWith:  ea .
				
				"ehypoth addBoardHandler ."
				
				ehypoth announcer when: MmUseableSelectedAnnouncement send: #usableSelected: to: self.
			
				"hypothPane addChild: ehypoth ."
				
				leftPane addChild: ehypoth .
		].
		
		"self addUsableAssertionsToLeftpane."
		
		self addUsableAssertionsToC.
		
		"self solve" .
	