adding
addUsableAssertionsToLeftpane
	| c aText textElement |
	
	
	
	proofToDo assertionsUsed "prevAssertions"
		do: [ :each | 
			| usableAssertion |
			
			"( {'idi' . 'a1ii' . 'ax-2' . 'ax-3'. 'ax-1'} includes: each name )
				ifFalse: [ "
					
	usableAssertion := (proofToDo prevAssertions at: each name) "copy".
					 
	aText := usableAssertion name asRopedText .

	aText fontSize: 30.
	aText foreground: Color veryDarkGray .
	textElement := (BlTextElement text: aText) .

	leftPane addChild: textElement "asScalableElement" .								
								
								
								
									
									usableAssertion wantedResult: wantedResultElement model .
									
									c := AssertionAndEssentialHypothesisElement new
											initializeWith: usableAssertion.
											 c addHandler: self . 
											 
										c constraintsDo: [ :cc | 
				"c horizontal fitContent.
				c vertical fitContent ."
				cc linear horizontal alignRight.].

									"usableAssertion hasEhypoths
										ifFalse: [ "
										
											"usableAssertion cloneVarsFrom: proofToDo.
											usableAssertion setAsComplete ."
												


									leftPane addChild: c.
												
												
									 ] 