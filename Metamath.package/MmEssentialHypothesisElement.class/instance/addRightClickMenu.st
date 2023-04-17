accessing
addRightClickMenu
| mmodel itms mmm aa |

mmm := OrderedCollection new .
"itms := MmEhyp prevs do: [:ee |

mmm add: (ee name -> [ :e | self tryMakeWit: ee ]).

]."

mmm add: ('try use ax-mp' -> [ :e | 

	self halt.
	
	aa := (MmEhyp prevs at: 'ax-mp')  reparse .
	
	e model canMapTo: aa .
	
	self addChildFirst: (aa gameElementWithEhypoths addBoardHandler: mainBoard) .
	
	
]).

mmm add: ('try use mp2.3 ehypoyh' -> [ :e | 

	self halt.
	
	"aa := (MmEhyp prevs at: 'ax-mp')  reparse ."
	
	"e model canMapToF ." ": FixedEhypoth ."
	
	e model canMapTo: mainBoard proofToDo essentialHypoths third.
	
	"self addChildFirst: aa gameElementWithEhypoths ."
	
	
]).

mmm add: ('try use mp2.1 ehypoyh' -> [ :e | 
	
	e model canMapTo: mainBoard proofToDo essentialHypoths first .
	
]).

mmm add: ('try use mp2.2 ehypoyh' -> [ :e | 
	
	e model canMapTo: mainBoard proofToDo essentialHypoths second .
	
]).

	mmodel := BrWithContextMenuModel new
			stencil: [ BrAnchoredElement new
					aptitude: (BrGlamorousContextMenuAptitude new
							content: (BrGlamorousSimpleContextMenuContent new
									items: mmm "{
									
'nel' -> [ :e | e removeChildren . ].

'restart' -> [ :e | 
	e removeChildren . 
	 ].

'green' -> [ :e | e background: Color green ]
											
											
											}";
											
											
									yourself);
							yourself);
					yourself ];
			yourself.

	self viewModel: mmodel.
	self aptitude: BrGlamorousWithContextMenuAptitude new.