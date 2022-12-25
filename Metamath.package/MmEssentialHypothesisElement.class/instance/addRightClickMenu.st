accessing
addRightClickMenu
| mmodel itms mmm aa |

mmm := OrderedCollection new .
itms := MmEhyp prevs do: [:ee |

mmm add: (ee name -> [ :e | self tryMakeWit: ee ]).

].

mmm add: ('ICT MOD' -> [ :e | 
	self halt.
	aa := (MmEhyp prevs at: 'a1i')  reparse .
	self addChildFirst: aa gameElementWithEhypoths .
	e model canMapTo: aa .
	
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