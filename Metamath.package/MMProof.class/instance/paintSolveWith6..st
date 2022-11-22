printing
paintSolveWith6: view

	| gel edgeElement anEdgeModel menuModel proofToDo usableAssertion usableAssertionCopy uel fromElement edgee eee usableAssertionx ele prev |
	
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
		
		
		gel when: BlMouseEnterEvent do: [ :anEventm | ].
		
		gel graph connectTo: highest atRandom .
			
		view topStep addChildren: { gel . "edgeElement" } .
		
		view layout circle .
		
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
	
	prev := proofToDo prevAssertions collect: #copy .
	proofToDo g: prev .
	"(proofToDo g: prev) do: [:ea | "
	
		"ea inspect."
			"uel :=  ea gameElement.
			
			uel graph connectTo: highest first ."
		
			"view topStep addChildren: { uel } ."
			
			"highest := uel ."
		"]."
	
	"proofToDo prevAssertions do:" false ifTrue: [ :each | 
		
		usableAssertion := each copy.
	
		Transcript next
		tab;
		color: Color gray;
		fontSize: 18;
		putAll: 'trying with: ' ;
		putAll: usableAssertion ;
		cr.
		
		(usableAssertion canMapTo: proofToDo) ifTrue: [
		
			usableAssertionCopy := usableAssertion copy.
			
			uel :=  usableAssertion gameElement.
			
			uel graph connectTo: highest first .
			
			
			view topStep addChildren: { uel } .
			
			highest := uel .
			
			
			usableAssertion essentialHypoths do: [ :ea |
			
				eee := ea gameElement.
				eee graph connectTo: uel.
			
				view topStep addChildren: {eee}.
				
				"try to make eee"
				
				"ea ham: proofToDo prevAssertions ."
				
					
	proofToDo prevAssertions do: [ :eac | 
		
		usableAssertionx := eac copy.
	
		Transcript next
		tab;
		color: Color gray;
		fontSize: 18;
		putAll: 'trying with: ' ;
		putAll: usableAssertionx ;
		cr.
		
		(usableAssertionx canMapTo: ea) ifTrue: [
		
				ele := usableAssertionx gameElement.
				ele when: "BlMouseDownEvent" BlDoubleClickEvent do: [ :anEvent | self halt ] .
				ele graph connectTo: highest .
		
				view topStep addChildren: { ele } .
			].
			
			
			].
			].
			"view layout rectanglePack ."
			"view layout  horizontalTree."
			view layout tree.
			
			
			Transcript next
		tab;
		color: Color green;
		fontSize: 24;
		putAll: usableAssertionCopy ;
		cr.
			
	
			"usableAssertionCopy ham: proofToDo prevAssertions" "asArray first asArray" .
			
				
"	usableAssertionCopy wantedResult: wantedResultElement model.

				c := AssertionAndEssentialHypothesisElement new
									initializeWith: usableAssertionCopy.
		
				c addBoardHandler: self.
				c constraintsDo: [ :con | con linear horizontal alignRight ].
				workPane addChild: c."


		"for each ehypoth
			try to make it with each prevAssertion"
							
							"check if ehypoths can be made from usableEhypoths.
							if not, try to make it with each usableAssertion available."
							
							"usableAssertion hasEhypoths ifFalse: [ 
									usableAssertion cloneVarsFrom: proofToDo. 
									usableAssertion setAsComplete .
									]."
	] ifFalse: [
	
		Transcript next
		tab;
		color: Color red;
		fontSize: 22;
		putAll: ' failed ' ;
		cr.
	
	]
].
	
^ view