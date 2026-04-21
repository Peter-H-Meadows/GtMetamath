as yet unclassified
addMenux
| menuModel |
menuModel := BrWithContextMenuModel new
stencil: [ 
| model |
BrAnchoredElement new
aptitude: (BrGlamorousContextMenuAptitude new
						              content: (BrGlamorousSimpleContextMenuContent new
								               items: { 
										               ('layout' -> [ :e | 
										               
										               
workPane layout: 
				"BlLinearLayout vertical" 
				"GtGraphTreemapLayout squarify."
				"(BlGridLayout  new columnCount: 3)."
				BlLinearLayout vertical.
										               
										               
										               
										                ]).
										                
										                
										                
										               ('free'
										                -> [ :e | model setAllVariablesToFixed ]).
										            ('color red' -> [ :e | model reColor: Color red  ]).
										            ('color blue' -> [ :e | model reColor: Color blue  ]).
										            ('color green' -> [ :e | model reColor: Color green  ]).
										            ('color red' -> [ :e | model reColor: Color red  ]).
										            
										            ('set First' -> [ :e | model setFirst: nil ]).
										            ('set Second' -> [ :e | model setSecond: nil ]).
										            
										            
										               ('bg' -> [ :e | e background: Color red ]).
										               ('inspect vars'
										                -> [ :e | model allVariables inspect ]).

										               ('model name printString'
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
