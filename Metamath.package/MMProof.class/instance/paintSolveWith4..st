printing
paintSolveWith4: view

	| gel line edgeElement anEdgeModel menuModel |
	view root background: Color veryVeryDarkGray.
	
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
		
		
		
		
		
		
		view topStep addChildren: { toElement . gel . edgeElement } .
			
	
		
		highest := view topStep root graph nodeChildren "atRandom".
	
		view layout circle "tree" "horizontalDominanceTree" .
		view layout horizontalTree nodeDistance: 5.
].

	view nodes
		shape: [ :x |  
			 fff := BlElement new background: Color random.
		];
		
		"with: (self withDeepCollect: #children)."
		
		with: { 1 }.
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
										               
										               ('model inspect' -> [ :e |  view layout circle ]).
										               
										               
										               "('free'
										                -> [ :e | model setAllVariablesToFixed ]).
										               ('color' -> [ :e | model reColor ]).
										               ('bg' -> [ :e | e background: Color red ]).
										               ('inspect vars'
										                -> [ :e | model allVariables inspect ]).

										               (model name printString
										                -> [ :e | MmGame new openGame: model name ]).

										               ('browse'
										                -> [ :e | MmGame new openGame: model name ])"

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


	view root viewModel: menuModel.

	view root aptitude: BrWithContextMenuAptitude new.
	
	"rectanglePack" "circle" "horizontalDominanceTree" "vertical"
	"radialTree"
	
	^ view