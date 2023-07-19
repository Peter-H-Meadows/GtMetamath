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
										               ('color' -> [ :e | model reColor ]).
										               
										               ('add grid v' -> [ :e | 
										               	"e background: Color red "
										               
										               	e addChild: model assertion gameElement .
										               
										               
										               
										               ]).
										               
										               
										               
										               
										               ('inspect vars'
										                -> [ :e | model allVariables inspect ]).

										               (model name printString
										                -> [ :e | MmGame new openGame: model name ]).

										               ('browse'
										                -> [ :e | MmGame new openGame: model name ])

										               "('aaa' -> [ :e | "

										               "model fHypoths reverse do: [ :ea | | el |
	
	el := MmFloatingHypothesisElement new initializeWith: ea  .

	el constraintsDo: [ :co |
			co horizontal matchParent ];
		background: BlTransparentBackground new .
	
	hypothBox addChild: el"
										               "] ."
										               "])." };
								               yourself);
						              yourself);
				             yourself ];
		             yourself.


	self viewModel: menuModel.

	self aptitude: BrWithContextMenuAptitude new