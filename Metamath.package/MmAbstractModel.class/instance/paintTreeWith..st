accessing
paintTreeWith: view

	view root background: Color veryVeryDarkGray.
	
	view root when: BlMouseDownEvent do: [ :anEvent | 
		| fromElement toElement line |
		fromElement := BlElement new background: Color random .
		toElement := BlElement new background: Color random.
		
		
		line := view edges edgeElementFor: toElement from: fromElement to: toElement.
		
		view edges edgeConstraintsFrom: fromElement to: toElement line: line.
		
		"fromElement constraints graph addConnectedEdge: aLineElement graph model.
		toElement constraints graph addConnectedEdge: aLineElement graph model."
		
			
		view topStep addChildren: { fromElement. toElement } .
		view layout tree .
		
		
	].

	view nodes
		shape: [ :x |  
			x gameElement when: BlMouseEnterEvent do: [ :anEvent | 
		
				view topStep addChildren: { BlElement new background: Color red } .
		
				view layout rectanglePack.
		
				anEvent currentTarget border: (BlBorder paint: (Color red alpha: 0.5)).
					anEvent currentTarget graph connectedEdges do: [ :inner | 
							inner element border: (BlBorder paint: (Color red alpha: 0.5)) ]
							
			]
				
		];
		
		with: (self withDeepCollect: #children).
		
		"with: (self children)."
		
	view edges
		fromCenterBottom;
		toCenterTop;
		connectToAll: [ :ea | ea children "parents"].
		
	view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 5) ];
		passive;
		connectToAll: [ :ea | ea "parents" children ].
		
	view layout "radialTree" tree  "rectanglePack" "circle" "horizontalDominanceTree" "vertical".
	^ view