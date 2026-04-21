initialization
openOn: aProofModel
	
"proofToDo setAllVariablesToFixed."

proofToDo := aProofModel "vcopy" .

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

"leftPane2 picture: wantedResultElement asScalableElement ."

"resultPane addChild: wantedResultElement asScalableElement ."

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

		"self addUsableAssertionsToLeftpane."
		
		self addEhypothPane .
		
		self addUsableAssertionsToC.
		
		"self solve"