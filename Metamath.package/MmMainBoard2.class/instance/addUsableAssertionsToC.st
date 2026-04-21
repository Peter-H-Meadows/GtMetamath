adding
addUsableAssertionsToC
	| el |
	leftPane addChild: (BlElement new size: 4 @ 400).
	
"listo items: proofToDo assertionsUsed ."

	proofToDo assertionsUsed
		do: [ :each | 
			({'wa'.
				'wnf'.
				'wb'.
				'wex'.
				'idi'.
				'a1ii'.
				'ax-2'.
				'wal'.
				'ax-1'} includes: each name)
				ifTrue: [ | aText textElement |
					aText := each name asRopedText.

					aText fontSize: 18.
					aText foreground: Color veryLightGray.
					textElement := BlTextElement text: aText.

					leftPane addChild: textElement ]
				ifFalse: [ proofToDo prevAssertions
						at: each name
						ifPresent: [ :ua | 
							Transcript
								show: ua;
								cr.	
								
								"self halt."	
								"usableAssertion wantedResult: wantedResultElement model."

							el := AssertionAndEssentialHypothesisElement new initializeWith: ua vcopy.	
							
							el addEventHandler: (MmP new gameController: self).
							
							"el addHandler: self."

							
				
							"leftPane2 addChild: el.
							
							leftPane2 picture: el."
							

							"leftPane addChild: el asScalableElement."
							
							"el := AssertionAndEssentialHypothesisElement new initializeWith: ua vcopy."
							leftPane addChild: el asScalableElement.
							
							el	hypothBox
		childrenDo: [ :ell | 
			ell mainBoard: self .
			ell addEventHandler: MmBoardListener new.
			ell announcer
				when: MmWantedSelectedAnnouncement
				send: #wantedSelected:
				to: self ].	 ] ] ].


	leftPane addChild: (BlElement new size: 400 @ 400)