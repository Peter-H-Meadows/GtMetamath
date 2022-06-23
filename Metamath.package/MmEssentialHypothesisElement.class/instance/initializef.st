accessing
initializef

| mmodel look |
super initialize .

	mmodel := BrWithContextMenuModel new
		stencil: [ BlElement new
				look:
					(BrGlamorousContextMenuLook new
						content:
							(BrGlamorousSimpleContextMenuContent new
								display:
									{
									
									('inspect' -> [ :e | self inspect . "model remove" "gameModel tryUse: self" ]).
									('remove' -> [ :e | e removeFromParent ]).
									('Change to green' -> [ :e | e background: Color green ])
									
									
									};
								yourself);
						yourself);
				yourself ];
		yourself.
	self assert: mmodel visible equals: false.
	
	look := BrWithContextMenuLook new.
	self assert: look visible equals: false.
	self assert: (look stencil asStencil asElement isKindOf: BlElement).
	
	self viewModel: mmodel.
	self look: look.