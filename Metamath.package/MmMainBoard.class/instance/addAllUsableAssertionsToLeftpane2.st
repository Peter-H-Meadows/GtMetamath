initialization
addAllUsableAssertionsToLeftpane2
	| usableAssertionCopy usableAssertion |
	
	proofToDo prevAssertions "asArray first asArray" "assertionsUsed"
		do: [ :each | 
		
			usableAssertion := each copy.
			
			"Transcript next tab;
			color: Color random;
			fontSize: 21;
			putAll: usableAssertion ;
			cr."
	
	
	"(proofToDo prevAssertions at: each name) "
	
		Transcript next
		tab;
		color: Color gray;
		fontSize: 18;
		putAll: 'trying with: ' ;
		putAll: usableAssertion ;
		cr.

		
		"self halt ."
		
		
		"(usableAssertion canMapTo: proofToDo)" false ifTrue: [ 
		
			usableAssertionCopy := usableAssertion copy.
			
			"self halt."
			Transcript next
		tab;
		color: Color green;
		fontSize: 24;
		putAll: usableAssertionCopy ;
		cr.
			
			
			"Transcript next cr;
	expanded: [ 
		AssertionAndEssentialHypothesisElement new initializeWith: usableAssertionCopy 
	]; cr ; cr ."
	
			usableAssertionCopy ham: proofToDo prevAssertions "asArray first asArray" .
			
				
"	usableAssertionCopy wantedResult: wantedResultElement model.

				c := AssertionAndEssentialHypothesisElement new
									initializeWith: usableAssertionCopy.
		
				c addBoardHandler: self.
				c constraintsDo: [ :con | con linear horizontal alignRight ].
				workPane addChild: c."


		"for each ehypoth
			try to make it with each prevAssertion"
							
							"check if ehypoths can be made from usableEhypoths.
							if not, try to make it with each usableAssertion available."
							
							"usableAssertion hasEhypoths ifFalse: [ 
									usableAssertion cloneVarsFrom: proofToDo. 
									usableAssertion setAsComplete .
									]."
	] ifFalse: [
	
		Transcript next
		tab;
		color: Color red;
		fontSize: 22;
		putAll: ' failed ' ;
		cr.
	
	]
]