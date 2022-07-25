initialization
addLevelButton
| levelButton |
	levelButton := BrButton new
		beHugeSize;
		aptitude: BrGlamorousButtonWithLabelAptitude new;
		label: 'level 1';
		action: [ 
		
		
		"sc isAttachedToSceneGraph ifTrue: [sc removeFromParent] ifFalse: [self addChild: sc].
		" ].
			
		levelButton constraintsDo: [ :c |
			c frame horizontal alignCenter.
			c frame vertical alignCenter ].
			
	self addChild:  levelButton.