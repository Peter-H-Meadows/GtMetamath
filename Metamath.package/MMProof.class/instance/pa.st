printing
pa

| view proofToDo menuModel prevs uel |
	view := GtMondrian new.
	self assert: view topStep root children isEmpty.
	
	view root background: Color veryVeryDarkGray.
	
	proofToDo := self copy.
	
	proofToDo setAllVariablesToFixed.


Transcript clear .

Transcript next
		tab;
		color: Color red;
		fontSize: 28;
		putAll: proofToDo ;
		cr.
	
	
	
	view root when: BlMouseWheelEvent do: [ :anEvent | 
		
		
		"gel when: BlMouseEnterEvent do: [ :anEventm | ].
		
		gel graph connectTo: highest atRandom .
			
		view topStep addChildren: { gel  } .
		
		view layout circle ."
		
		"tree" "horizontalDominanceTree" .
		
		"view layout horizontalTree nodeDistance: 5."
].


	view nodes shape: [ :x |  x gameElement ];
		with: { proofToDo }.
		
		menuModel := BrWithContextMenuModel new
		             stencil: [ 
			             BrAnchoredElement new
				             aptitude: (BrGlamorousContextMenuAptitude new
						              content: (BrGlamorousSimpleContextMenuContent new
items: {

	('inspect' -> [ :e | e inspect ]).
										               
	('circle' -> [ :e | view layout circle ]).
											               
	('tree' -> [ :e | view layout horizontalTree ]).
	
	('pack' -> [ :e | view layout rectanglePack ]).
											               
};
								               yourself);
						              yourself);
				             yourself ];
		             yourself.


	view root viewModel: menuModel.

	view root aptitude: BrWithContextMenuAptitude new.
	
	"rectanglePack" "circle" "horizontalDominanceTree" "vertical"
	"radialTree"
	
			
		
	highest := view topStep root graph nodeChildren .
	
	
	"for each ehypoth, when clicked; try to make, if yes, add ass and it's ehypoths to graph"
	
	prevs := proofToDo prevAssertions collect: #copy .
	"proofToDo g: prevs ."
	
	(proofToDo g: prevs) do: [:ea | 
	
		"ea inspect."
			uel :=  ea gameElement.
			
			uel graph connectTo: highest first .
		
			view topStep addChildren: { uel } .
			
			"highest := uel ."
		].

	
^ view