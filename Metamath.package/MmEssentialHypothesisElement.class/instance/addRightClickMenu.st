accessing
addRightClickMenu
| mmodel itms mmm aa prevs fits |

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



mmm add: ('try use ehypoyh 1' -> [ :e | 
	
	e model canMapTo: mainBoard proofToDo essentialHypoths first .
	
]).

mmm add: ('try use ehypoyh 2' -> [ :e | 
	
	e model canMapTo: mainBoard proofToDo essentialHypoths second .
	
]).

mmm add: ('try use ehypoyh 3' -> [ :e | 

	self halt.
	
	"aa := (MmEhyp prevs at: 'ax-mp')  reparse ."
	
	"e model canMapToF ." ": FixedEhypoth ."
	
	e model canMapTo: mainBoard proofToDo essentialHypoths third.
	
	"self addChildFirst: aa gameElementWithEhypoths ."
	
	
]).



mmm add: ('try a' -> [ :e | 

	self halt.
	
	prevs := mainBoard proofToDo prevAssertions collect: #vcopy "#reparse" .
	
	fits := e model returnMappableFrom: prevs .
	
	self addChildFirst: (fits first gameElementWithEhypoths addBoardHandler: mainBoard) .
	
	"e model canMapTo: mainBoard proofToDo essentialHypoths first ."
	
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