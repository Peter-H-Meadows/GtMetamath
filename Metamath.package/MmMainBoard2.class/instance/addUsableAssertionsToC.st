adding
addUsableAssertionsToC
	| el |
	proofToDo assertionsUsed
		do: [ :each | 
			| usableAssertion |
			"( {'idi' . 'a1ii' . 'ax-2' . 'ax-3'. 'ax-1'} includes: each name )
				ifFalse: [ "
			usableAssertion := proofToDo prevAssertions at: each name.
			
			usableAssertion reparse .
			
			"usableAssertion wantedResult: wantedResultElement model."

			el := AssertionAndEssentialHypothesisElement new
					initializeWith: usableAssertion.
			el addHandler: self.

			"el constraintsDo: [ :cc | cc linear horizontal alignRight ]."

			"leftPane addChild: el "
			workPane addChild: el 
		]