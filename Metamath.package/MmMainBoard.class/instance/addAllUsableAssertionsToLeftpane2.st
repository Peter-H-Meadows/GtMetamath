initialization
addAllUsableAssertionsToLeftpane2
	| c aText textElement |
	proofToDo prevAssertions
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
				
				
					usableAssertion := (proofToDo prevAssertions at: each name) copy .

					aText := usableAssertion name asRopedText.

					aText fontSize: 30.
					aText foreground: Color veryDarkGray.
					textElement := BlTextElement text: aText.

					leftPane addChild: textElement.	"asScalableElement"

					usableAssertion canMapTo: proofToDo.
					"if maps, can we make its ehypoths?"


					usableAssertion wantedResult: wantedResultElement model.

					c := AssertionAndEssentialHypothesisElement new
							initializeWith: usableAssertion.
							
					"c addHandler: self."
					
					c addBoardHandler: self .

					c constraintsDo: [ :cc | cc linear horizontal alignRight ].	
					
					"usableAssertion hasEhypoths ifFalse: [ 
									usableAssertion cloneVarsFrom: proofToDo. 
									usableAssertion setAsComplete .
									]."


					 workPane addChild: c.
					"leftPane addChild: c ."
				] 
			]