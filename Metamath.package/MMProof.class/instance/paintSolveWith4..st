accessing
paintSolveWith4: view

	| edgeElement anEdgeModel |
	view root background: Color veryVeryDarkGray.
	
	view root when: BlMouseDownEvent do: [ :anEvent | 
		| fromElement toElement |
		
		"fromElement := BlElement new background: Color random ."
		
		fromElement := view topStep root graph nodeChildren atRandom.
		
		"fromElement := BlElement new background: Color random."
		
		toElement := BlElement new background: Color random.
		
		
		view topStep addChildren: { toElement } .
		"
		edgeElement := 
		BlLineElement new
		border: (BlBorder paint: (Color red alpha: 0.5) width: 1);
		constraintsDo: [:c | c ignoreByLayout ];
		zIndex: -1 .
		
		edgeElement
		fromAnchor: (BlNearestPositionBoundsAnchor referenceElement: fromElement relatedTo: toElement);
		toAnchor: (BlNearestPositionBoundsAnchor referenceElement: toElement relatedTo: fromElement).
	edgeElement constraints ignoreByLayout.
	
	anEdgeModel := GtGraphEdgeWithElement new
		element: edgeElement;
		from: fromElement to: toElement.
	
	edgeElement graph model: anEdgeModel.
	edgeElement graph beEdge.
	
	fromElement constraints graph addConnectedEdge: edgeElement graph model.
	toElement constraints graph addConnectedEdge: edgeElement graph model."
		
		
		
		
		
		
		"self edgeConstraintsFrom: fromElement to: toElement line: line .
		elements add: line ."
		
			
		toElement graph connectTo: fromElement .
	
	
	view layout "tree" horizontalDominanceTree .
		
		
		
		
		
		"line := view edges edgeElementFor: toElement from: fromElement to: toElement.
		
		
		edgeElement := view edges defaultEdgeElement ."
		
	"edgeElement
		fromAnchor: (fromAnchorClass referenceElement: fromElement relatedTo: toElement);
		toAnchor: (toAnchorClass referenceElement: toElement relatedTo: fromElement)."
		
	"edgeElement constraints ignoreByLayout.
	
	anEdgeModel := GtGraphEdgeWithElement new
		element: edgeElement;
		from: fromElement to: toElement.
	
	edgeElement graph model: anEdgeModel.
	
	edgeElement graph beEdge.
		
		
		view edges edgeConstraintsFrom: fromElement to: toElement line: edgeElement."
		
		
		"fromElement constraints graph addConnectedEdge: aLineElement graph model.
		toElement constraints graph addConnectedEdge: aLineElement graph model."
		
			
			
		"view edges
		fromCenterBottom;
		toCenterTop;
		connectToAll: [ :ea | { fromElement } ].	"	
		
		"view layout grid ."
		
		
	].

	view nodes
		shape: [ :x |  
			 fff := BlElement new background: Color random.
		];
		
		"with: (self withDeepCollect: #children)."
		
		with: "(self children)" { 1. 2. 3 }.
		
		
	view layout "radialTree" tree  "rectanglePack" "circle" "horizontalDominanceTree" "vertical".
	^ view