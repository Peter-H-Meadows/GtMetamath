as yet unclassified
addHideButton
	| hideButton |
	hideButton := BrButton new
			aptitude: BrGlamorousButtonWithLabelAptitude new;
			label: 'X';
			action: [ self parent removeFromParent ].

	hideButton
		constraintsDo: [ :c | 
			c frame horizontal alignRight.
			c frame vertical alignBottom ].
			
	hideButton background: Color veryVeryDarkGray.
	
	self addChild: hideButton.