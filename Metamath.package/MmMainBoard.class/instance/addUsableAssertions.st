adding
addUsableAssertions
	| c |
	proofToDo prevAssertions "assertionsUsed"
		do: [ :each | 
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


					workPane addChild: c ] ]