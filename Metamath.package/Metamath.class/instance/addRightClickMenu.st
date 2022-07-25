accessing
addRightClickMenu
	| model |
	model := BrWithContextMenuModel new
			stencil: [ BrAnchoredElement new
					aptitude: (BrGlamorousContextMenuAptitude new
							content: (BrGlamorousSimpleContextMenuContent new
									items: {
									
'next level' -> [ :e | e removeChildren . e addChild: ( MmMainBoard new openOn:  levels next ) . ].

'reset' -> [ :e | e removeChildren	"e addChild: ( MmMainBoard new openOn:  levels peekBack  )" ].

'green' -> [ :e | e background: Color green ]
											
											
											};
									yourself);
							yourself);
					yourself ];
			yourself.

	aSpace root viewModel: model.
	aSpace root aptitude: BrGlamorousWithContextMenuAptitude new