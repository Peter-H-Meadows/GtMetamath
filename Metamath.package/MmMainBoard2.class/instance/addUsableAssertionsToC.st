adding
addUsableAssertionsToC
	| el |
	proofToDo assertionsUsed
		do: [ :each | 
			
			( {'wa' .'wnf' . 'wb' . 'wex' . 'idi' . 'a1ii' . 'ax-2' . 'wal'. 'ax-1'} includes: each name )
			ifTrue: [
				| aText textElement |
				aText := each name asRopedText .

	aText fontSize: 18.
	aText foreground: Color veryLightGray .
	textElement := (BlTextElement text: aText) .
			
						leftPane addChild: textElement.
			
			]
				ifFalse: [ 
			 		proofToDo prevAssertions at: each name ifPresent: [ :ua |
			
						"proofToDo prevAssertions at: 'ax-1'."
				
						"ua parse ."
						Transcript show: ua ; cr .
			
						"self halt."
						"usableAssertion wantedResult: wantedResultElement model."

						el := AssertionAndEssentialHypothesisElement new
						initializeWith: ua vcopy.
					
						"self addEventHandler: MmP new ."
					
							el addHandler: self.

						"el constraintsDo: [ :cc | cc linear horizontal alignRight ]."

						leftPane addChild: el .
						"workPane addChild: el" 
						]
			].
		]