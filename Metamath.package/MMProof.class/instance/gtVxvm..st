as yet unclassified
gtVxvm: aView
<gtView>
	self parse.

	^ aView explicit
		title: 'vvv';
		stencil: [ | cont |
		self vcopy .
		
		cont := BlElement new .
		
	self assertionsUsed
		do: [ :each | 
			
			"( {'wa' .'wnf' . 'wb' . 'wex' . 'idi' . 'a1ii' . 'ax-2' . 'wal'. 'ax-1'} includes: each name )"
		"false" true	ifTrue: [
				| aText textElement |
				aText := each name asRopedText .

	aText fontSize: 18.
	aText foreground: Color veryLightGray .
	textElement := (BlTextElement text: aText) .
			
						cont addChild: textElement.
			
			]
				ifFalse: [ 
			 		self prevAssertions at: each name ifPresent: [ :ua |
			
						"proofToDo prevAssertions at: 'ax-1'."
				
						"ua parse ."
						| el |
						Transcript show: ua ; cr .
			
						"self halt."
						"usableAssertion wantedResult: wantedResultElement model."

						el := AssertionAndEssentialHypothesisElement new
						initializeWith: ua vcopy.
					
						"self addEventHandler: MmP new ."
					
							el addHandler: self.

						"el constraintsDo: [ :cc | cc linear horizontal alignRight ]."

						cont addChild: el .
						"workPane addChild: el" 
						].
						
						
			].
		].
		
		cont
		
		
		
		 ]