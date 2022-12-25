accessing
addRightClickMenu
	| model |
		model := BrWithContextMenuModel new
			stencil: [ BrAnchoredElement new
					aptitude: (BrGlamorousContextMenuAptitude new
							content: (BrGlamorousSimpleContextMenuContent new
									items: {
									
'next level' -> [ :e | 

	level := level + 1 . 
	e removeChildren . 

	e addChild: (MmMainBoard2 new openOn: (Database allProofs asArray at: level)).

	"e addChild: ( MmMainBoard new openOn:  levels next ) . "


].



'restart' -> [ :e | 
	e removeChildren . 
	e addChild: (MmMainBoard2 new openOn: (Database allProofs asArray at: level)).
	"e addChild: ( MmMainBoard new openOn:  levels peekBack  )" ].

'green' -> [ :e | e background: Color green ]
											
											
											};
									yourself);
							yourself);
					yourself ];
			yourself.

	aSpace root viewModel: model.
	aSpace root aptitude: BrGlamorousWithContextMenuAptitude new.