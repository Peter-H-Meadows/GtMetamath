adding
addUsableAssertionsToLeftpane
	| c |
	proofToDo "prevAssertions" assertionsUsed
		do: [ :each | 
			| usableAssertion |
			each name = 'a1ii' ifFalse: [
			"self halt."
			each name = 'idi' ifFalse: [
			usableAssertion := (proofToDo prevAssertions at: each name) copy.
"self halt."
			usableAssertion body class = Array
				"ifTrue: [  ]"
				ifFalse: [ 
					usableAssertion hasEhypoths
						ifFalse: [ 
						
							"use same vars as proofworkingon"
							
							usableAssertion cloneVarsFrom: proofToDo .
							
							usableAssertion setAllVariablesToFixed
						].

					c := (AssertionAndEssentialHypothesisElement new
							initializeWith: usableAssertion) "addHandlersForListUsable:  controller".
							
			
c announcer when: MmUseableSelectedAnnouncement send: #usableSelected: to: self.


					leftPane addChild: c.
					] ] ] ]