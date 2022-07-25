adding
addUsableAssertionsToLeftpane
	| c |
	proofToDo "assertionsUsed" prevAssertions
		do: [ :each | 
			| usableAssertion |
			(each name = 'a1ii' or: [each name = 'idi'])
				ifFalse: [  "self halt."
				
					 usableAssertion := (proofToDo prevAssertions at: each name) copy.
							usableAssertion body class = Array
								ifFalse: [ 
								
									
									usableAssertion wantedResult: wantedResultElement model .
									
									c := AssertionAndEssentialHypothesisElement new
											initializeWith: usableAssertion.
											 c addHandler: self . 

									"usableAssertion hasEhypoths
										ifFalse: [ "
										
											"usableAssertion cloneVarsFrom: proofToDo.
											usableAssertion setAsComplete ."
											
											
										"c := AssertionAndEssentialHypothesisElement new
											initializeWith: usableAssertion.
											c addHandler.
											c announcer
												when: MmUseableSelectedAnnouncement
												send: #usableSelected:
												to: self .]
										ifTrue: [
											c := AssertionAndEssentialHypothesisElement new
											initializeWith: usableAssertion.
											 c addHandler: self . "
										
										"c announcer
												when: MmUseableSelectedAnnouncement
												send: #usableSelectedFromList:
												to: self" "]."
												


									leftPane addChild: c.
												
												
									 ] ] ] 