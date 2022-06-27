adding
addUsableAssertions
	| c |
	proofToDo assertionsUsed
		reverseDo: [ :each | 
			| usableAssertion |
			usableAssertion := (proofToDo prevAssertions at: each name) copy.

			usableAssertion body isWFF
				ifTrue: [  ]
				ifFalse: [ 
					usableAssertion hasEhypoths
						ifFalse: [ 
						
							"use same vars as proofworkingon"
							usableAssertion cloneVarsFrom: proofToDo .
							
							"usableAssertion setAllVariablesToFixed" 
						].

					c := (AssertionAndEssentialHypothesisElement new
							initializeWith: usableAssertion) addHandlersController: controller.


					topPane addChild: c ] ]