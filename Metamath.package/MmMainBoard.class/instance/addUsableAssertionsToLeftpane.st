adding
addUsableAssertionsToLeftpane
	| c |
	proofToDo assertionsUsed "prevAssertions"
		do: [ :each | 
			| usableAssertion |
			(each name = 'a1ii' or: [each name = 'idi'])
				ifFalse: [  "self halt."
				
					 usableAssertion := (proofToDo prevAssertions at: each name) copy.
							usableAssertion body class = Array
								ifFalse: [ 
								
									c := AssertionAndEssentialHypothesisElement new
											initializeWith: usableAssertion.

									leftPane addChild: c.
									
									

									usableAssertion hasEhypoths
										ifFalse: [ 
											usableAssertion cloneVarsFrom: proofToDo.

											usableAssertion setAllVariablesToFixed.
											c addHandler.
											c announcer
												when: MmUseableSelectedAnnouncement
												send: #usableSelected:
												to: self .]
										ifTrue: [ c addHandler: self . 
										
										"c announcer
												when: MmUseableSelectedAnnouncement
												send: #usableSelectedFromList:
												to: self" ]
									 ] ] ] 