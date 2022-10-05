initialization
addAllUsableAssertionsToLeftpane2
	| c usableAssertionCopy |
	proofToDo "prevAssertions" assertionsUsed
		do: [ :each | 
			| usableAssertion |
			({'wn'.
				'wi'.
				'idi'.
				'a1ii'.
				'ax-2'.
				'ax-3'.
				'ax-1'} includes: each name)
	ifFalse: [ 
	
		usableAssertion := (proofToDo prevAssertions at: each name) copy.
		
		(usableAssertion canMapTo: proofToDo) ifTrue: [ 
						
							usableAssertionCopy := usableAssertion copy.

							usableAssertionCopy wantedResult: wantedResultElement model.

							c := AssertionAndEssentialHypothesisElement new
									initializeWith: usableAssertionCopy.

		c addBoardHandler: self.
		c constraintsDo: [ :con | con linear horizontal alignRight ].
		workPane addChild: c.
							
		"for each ehypoth
			try to make it with each prevAssertion"
							
							"check if ehypoths can be made from usableEhypoths.
							if not, try to make it with each usableAssertion available."
							
							"usableAssertion hasEhypoths ifFalse: [ 
									usableAssertion cloneVarsFrom: proofToDo. 
									usableAssertion setAsComplete .
									]."
]	
		] 
	]	