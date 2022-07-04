adding
addUsableAssertionsToLeftpane
	| c |
	proofToDo "prevAssertions" assertionsUsed
		do: [ :each | 
			| usableAssertion |
			each name = 'a1ii' ifFalse: [
			
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
							initializeWith: usableAssertion) addHandlersForListUsable:  controller.


					leftPane addChild: c ] ]]