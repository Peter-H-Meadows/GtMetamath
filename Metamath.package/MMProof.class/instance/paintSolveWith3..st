deprecated
paintSolveWith3: view

	view root background: Color veryVeryDarkGray.
	
	view root when: BlMouseDownEvent do: [ :anEvent | 
		| fromElement toElement |
		
		"fromElement := BlElement new background: Color random ."
		
		fromElement := view topStep root graph nodeChildren atRandom.
		
		fromElement := BlElement new background: Color random.
		
		toElement := BlElement new background: Color random.
		
		
		view topStep addChildren: { toElement . fromElement } .
		
		view edges
		"fromCenterBottom;
		toCenterTop;"
		"connectTo: [ :ea | { toElement } ]."
		connectFrom: [ :xxx | fff] to: [:yyy | toElement].
		
		"view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 2) ];
		
		connect:
			{(toElement -> fromElement)}
			from: #key
			to: #value."
			
	view layout tree.
		
		
		
		
		
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
		
		view layout tree .
		
		
	].

	view nodes
		shape: [ :x |  
			fff := x gameElement "when: BlMouseEnterEvent do: [ :anEvent | 
		
				view topStep addChildren: { BlElement new background: Color red } .
		
				view layout rectanglePack.
		
				anEvent currentTarget border: (BlBorder paint: (Color red alpha: 0.5)).
					anEvent currentTarget graph connectedEdges do: [ :inner | 
							inner element border: (BlBorder paint: (Color red alpha: 0.5)) ]
							
			]"
				
		];
		
		"with: (self withDeepCollect: #children)."
		
		with: (self children).
		
	"view edges
		fromCenterBottom;
		toCenterTop;
		connectToAll: [ :ea | ea children ]."
		
	"view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 5) ];
		passive;
		connectToAll: [ :ea | ea children ]."
		
	view layout "radialTree" tree  "rectanglePack" "circle" "horizontalDominanceTree" "vertical".
	^ view