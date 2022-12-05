accessing
gtViewExp: aView
	"<gtView>"
	| el mmm |
	
	
	^ aView mondrian
		title: '0-0';
		painting: [ :mon | 
		
			mon root background: Color veryVeryDarkGray.
		
			nodesx := mon nodes
				shape: [ :x | 
				
					"el := (BlTextElement new text: x asString asRopedText) ."
					
					el := x gameElement.
						
					"el	when: BlMouseEnterEvent do: [ :anEvent | 
							anEvent currentTarget graph connectedEdges do: [ :inner | 
								inner element border: (BlBorder paint: Color red) 
							] 
						]."
						
					"el	when: BlMouseEnterEvent do: [ :anEvent | 
							anEvent currentTarget graph connectTo: nodesx third .
							mon layout tree.
						]."
						
						
					el.
					
				];
				with: {self}.
			
			"mon edges connectFrom: [ :x | x // 2 ]."
		
			mon layout tree.
		
			mon root when: BlMouseDownEvent do: [ :anEvent | 
			
				"mon nodes
				shape: [ :x | BlTextElement new text: x asString asRopedText ];
				with: (2 to: 19).
			
				mon edges connectFrom: [ :x | x // 2 ]."
				
				"mon edges connect: { nodesx second -> nodesx third } from: #key to: #value."
				
				"nodesx second  graph connectTo: nodesx third ."
				
				self setAllVariablesToFixed.
				
				mmm :=  self assertionsUsed.
				mmm do: [:ea | ea canMapTo: self ].
				
				
				mon nodes
				shape: [ :x | AssertionAndEssentialHypothesisElement new
											initializeWith: x. ];
				with: mmm.
		
				mon layout rectanglePack.
			].
		
		
		
		].