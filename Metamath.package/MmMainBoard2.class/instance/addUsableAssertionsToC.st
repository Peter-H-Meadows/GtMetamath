adding
addUsableAssertionsToC
	| el |
	
	leftPane addChild: (BlElement new size: 4@ 400).
	
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
					
							"el addHandler: self."
							
							el addEventHandler: MmBoardListener new.
							
							el	hypothBox
		childrenDo: [ :ell | 
			ell mainBoard: self .
			ell addEventHandler: MmBoardListener new.
			ell announcer
				when: MmWantedSelectedAnnouncement
				send: #wantedSelected:
				to: self ].
	

						"el constraintsDo: [ :cc | cc linear horizontal alignRight ]."

						leftPane addChild: el .
						"workPane addChild: el" 
						]
			].
		].
		
		
	leftPane addChild: (BlElement new size: 4@ 400).