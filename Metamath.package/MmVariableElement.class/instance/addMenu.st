accessing
addMenu
| menuModel |
menuModel := BrWithContextMenuModel new
stencil: [ 
BrAnchoredElement new
aptitude: (BrGlamorousContextMenuAptitude new
						              content: (BrGlamorousSimpleContextMenuContent new
								               items: { 
										               ('model inspect' -> [ :e | model inspect ]).
										               ('free'
										                -> [ :e | model setAllVariablesToFixed ]).
										            ('color red' -> [ :e | model reColor: Color red  ]).
										            ('color blue' -> [ :e | model reColor: Color blue  ]).
										            ('color green' -> [ :e | model reColor: Color green  ]).
										            ('color red' -> [ :e | model reColor: Color red  ]).
										            
										            
										            
										               ('bg' -> [ :e | e background: Color red ]).
										               ('inspect vars'
										                -> [ :e | model allVariables inspect ]).

										               (model name printString
										                -> [ :e | MmGame new openGame: model name ]).

										               ('browse'
										                -> [ :e | MmGame new openGame: model name ])
										                
										        };
								               yourself);
						              yourself);
				             yourself ];
		             yourself.


	self viewModel: menuModel.

	self aptitude: BrWithContextMenuAptitude new
