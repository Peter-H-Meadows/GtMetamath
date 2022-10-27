printing
paintSolveWith4: view

	| gel edgeElement anEdgeModel menuModel proofToDo usableAssertion usableAssertionCopy |
	
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
	
	
	
	view root when: BlMouseDownEvent do: [ :anEvent | 
		| fromElement toElement |
		
		"fromElement := BlElement new background: Color random ."
		
		
		
		fromElement := view topStep root graph nodeChildren atRandom.
		
		"fromElement := BlElement new background: Color random."
		
		toElement := BlElement new background: Color random.
		
		
		gel :=  self gameElement.
		
		gel when: BlMouseEnterEvent do: [ :anEventm | 
		
				"view topStep addChildren: { BlElement new background: Color red } ."
		
				"view layout rectanglePack."
		
				anEventm currentTarget border: (BlBorder paint: (Color red alpha: 0.5)).
				
	"anEventm currentTarget graph connectedEdges do: [ :inner | "
	"
	inner element border: (BlBorder paint: (Color red alpha: 0.5))"
							 ].
		
		
		gel graph connectTo: highest atRandom .
		
		toElement graph connectTo:  highest atRandom .
		
		"view topStep root graph nodeChildren atRandom." 		
		
		
		
			"fromObject := aFromBlock value: each.
			toObject := aToBlock value: each.
			fromElement := mondrian nodeAt: fromObject ifAbsent: [ nil ].
			toElement := mondrian nodeAt: toObject ifAbsent: [ nil ]."
			
			
			"line := self edgeElementFor: each from: fromElement to: toElement."
			
				
		"elementStencilBuilder
		ifNotNil: [ elementStencilBuilder 
				cull: anObject
				cull: fromElement
				cull: toElement ]
		ifNil: [ self defaultEdgeElement ]."
		
		
		edgeElement := 
		BlLineElement new
		border: (BlBorder paint: (Color green alpha: 0.5) width: 1);
		constraintsDo: [:c | c ignoreByLayout ];
		zIndex: -1.
		
		
		
		
	edgeElement
		fromAnchor: (BlElementCenterAnchor referenceElement: fromElement relatedTo: toElement);
		toAnchor: ("BlNearestPositionAnchor" BlElementCenterAnchor referenceElement: toElement relatedTo: fromElement).
		
		
	edgeElement constraints ignoreByLayout.
	
	anEdgeModel := GtGraphEdgeWithElement new
		element: edgeElement;
		from: fromElement to: toElement.
	
	edgeElement graph model: anEdgeModel.
	edgeElement graph beEdge.
		
		
		
		
		
		
		view topStep addChildren: { "toElement ." gel . edgeElement } .
			
	
		
		highest := view topStep root graph nodeChildren "atRandom".
	
		view layout circle "tree" "horizontalDominanceTree" .
		view layout horizontalTree nodeDistance: 5.
].

	view nodes
		shape: [ :x |  x gameElement
			 "fff := BlElement new background: Color random."
		];
		
		"with: (self withDeepCollect: #children)."
		
		with: { proofToDo }.
		"(self children)" 
		
		
	highest := view topStep root graph nodeChildren .
		
	view layout tree .
	
	
	menuModel := BrWithContextMenuModel new
		             stencil: [ 
			             BrAnchoredElement new
				             aptitude: (BrGlamorousContextMenuAptitude new
						              content: (BrGlamorousSimpleContextMenuContent new
								               items: { 
										               ('model inspect' -> [ :e |  e inspect]).
										               
										               ('circle' -> [ :e |  view layout circle ]).
										               
};
								               yourself);
						              yourself);
				             yourself ];
		             yourself.


	view root viewModel: menuModel.

	view root aptitude: BrWithContextMenuAptitude new.
	
	"rectanglePack" "circle" "horizontalDominanceTree" "vertical"
	"radialTree"
	
	
	
	proofToDo prevAssertions do: [ :each | 
		
			usableAssertion := each copy.
	
	
	"(proofToDo prevAssertions at: each name) "
	
		Transcript next
		tab;
		color: Color gray;
		fontSize: 18;
		putAll: 'trying with: ' ;
		putAll: usableAssertion ;
		cr.

		
		"self halt ."
		
		
		(usableAssertion canMapTo: proofToDo) ifTrue: [ 
		
			usableAssertionCopy := usableAssertion copy.
			
			"self halt."
			Transcript next
		tab;
		color: Color green;
		fontSize: 24;
		putAll: usableAssertionCopy ;
		cr.
			
			
			"Transcript next cr;
	expanded: [ 
		AssertionAndEssentialHypothesisElement new initializeWith: usableAssertionCopy 
	]; cr ; cr ."
	
			usableAssertionCopy ham: proofToDo prevAssertions "asArray first asArray" .
			
				
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