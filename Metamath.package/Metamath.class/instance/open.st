accessing
open
"<gtExample>
MmMainBoard new openPlz"

| model |

level := 1 .

	aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GtMetamath'.

	aSpace root background: Color veryVeryDarkGray.
	
	aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i')).
	
	""
	
	"openOn: levels next" 
	
	"(aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i')))."
	
	"self addRightClickMenu ."
	
	
	model := BrWithContextMenuModel new
			stencil: [ BrAnchoredElement new
					aptitude: (BrGlamorousContextMenuAptitude new
							content: (BrGlamorousSimpleContextMenuContent new
									items: {
									
'next level' -> [ :e | 



level := level + 1 . 
e removeChildren . 


e addChild: (MmMainBoard new openOn: (Database allProofs at: 'syl')).

"e addChild: ( MmMainBoard new openOn:  levels next ) . "


].

'restart' -> [ :e | e removeChildren . e addChild: ( MmMainBoard new openOn:  levels peekBack  ) ].

'green' -> [ :e | e background: Color green ]
											
											
											};
									yourself);
							yourself);
					yourself ];
			yourself.

	aSpace root viewModel: model.
	aSpace root aptitude: BrGlamorousWithContextMenuAptitude new.
	
	
	
	
	
	
	
	
	

	aSpace show.