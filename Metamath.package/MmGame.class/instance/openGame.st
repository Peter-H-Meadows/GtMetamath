accessing
openGame
"self new openGame "

	| aSpace model levels |
	aSpace := BlSpace new
		extent: 1400@800;
		title: 'GlamorousMetamath' .
	
	aSpace root background: Color darkGray .
	
	"aSpace root addChild: self ."
	
	levels := ReadStream on: self scopes first allProofs "reversed" .
	
	aSpace root addChild: ( MmMainBoard new openOn:  levels next ) .
	
	model := BrWithContextMenuModel new
		stencil: [ BrAnchoredElement new
				look:
					(BrGlamorousContextMenuLook new
						content:
							(BrGlamorousSimpleContextMenuContent new
								items:
									{('next level' -> [ :e | e removeChildren. e addChild: ( MmMainBoard new openOn:  levels next ) .  ]).
									('reset' -> [ :e | e removeChildren. e addChild: ( MmMainBoard new openOn:  levels peekBack  ) ]).
									('green' -> [ :e | e background: Color green ])};
								yourself);
						yourself);
				yourself ];
		yourself.	
	
	
	
	
	aSpace root viewModel: model.
	aSpace root look: BrWithContextMenuLook new .

	"aSpace root addEventHandler:
			(BlEventHandler
				on: BlDoubleClickEvent
				do: [ :evt | BlElementSelection on: evt target ])."
	
	aSpace show.