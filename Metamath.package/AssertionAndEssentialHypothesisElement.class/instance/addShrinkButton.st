as yet unclassified
addShrinkButton
	| hideButton |
	hideButton := BrButton new
			aptitude: BrGlamorousButtonWithLabelAptitude new;
			label: 'Xxx';
			action: [ self transform
		scaleBy: 0.5@1;
		apply. ].

	hideButton
		constraintsDo: [ :c | 
			c frame horizontal alignRight.
			c frame vertical alignBottom ].
			
	hideButton background: Color veryVeryDarkGray.
	
	self addChild: hideButton.