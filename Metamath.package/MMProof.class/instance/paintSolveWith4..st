accessing
paintSolveWith4: view

	| gel |
	view root background: Color veryVeryDarkGray.
	
	view root when: BlMouseDownEvent do: [ :anEvent | 
		| fromElement toElement |
		
		"fromElement := BlElement new background: Color random ."
		
		
		
		fromElement := view topStep root graph nodeChildren atRandom.
		
		"fromElement := BlElement new background: Color random."
		
		toElement := BlElement new background: Color random.
		
		
		gel :=  self gameElement .
		
		view topStep addChildren: { toElement . gel } .
			
		toElement graph connectTo: fromElement .
		
		gel graph connectTo: fromElement .
	
	
	view layout "tree" horizontalDominanceTree .
		
].

	view nodes
		shape: [ :x |  
			 fff := BlElement new background: Color random.
		];
		
		"with: (self withDeepCollect: #children)."
		
		with: { 1. 2. 3 }.
		"(self children)" 
		
	view layout "radialTree" tree  "rectanglePack" "circle" "horizontalDominanceTree" "vertical".
	^ view