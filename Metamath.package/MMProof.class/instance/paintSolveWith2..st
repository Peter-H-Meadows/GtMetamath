deprecated
paintSolveWith2: view

	| edgeElement anEdgeModel |
	view root background: Color veryVeryDarkGray.
	
	view root when: BlMouseDownEvent do: [ :anEvent | 
		| fromElement toElement line |
		
		
		"view nodes
		shape: [ :x | BlTextElement new text: x asString asRopedText ];
		with: (1 to: 100)."
		
	"view edges connectFrom: [ :x | x // 2 ]."
	
	fromElement := view topStep root graph nodeChildren atRandom.
	
	toElement := view topStep root graph nodeChildren atRandom.
	"view nodes
		shape: [ :x | BlTextElement new text: x asString asRopedText ];
		with: (11 to: 14)."
	view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 2) ];
		passive;
		connect:
			{
			(fromElement -> toElement)}
			from: #key
			to: #value.
			
	view layout tree.
	
		
	].

	view nodes
		shape: [ :x | BlTextElement new text: x asString asRopedText;
			when: BlMouseEnterEvent do: [ :anEvent | 
			
			view edges
		shape: [ :xx | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 2) ];
		"passive;"
		connect:
			{(2 -> 3).}
			from: #key
			to: #value.
			
			
					anEvent currentTarget graph connectedEdges do: [ :inner | 
							inner element border: (BlBorder paint: (Color red alpha: 0.5)) ] ];
				when: BlMouseLeaveEvent do: [ :anEvent | 
					anEvent currentTarget graph connectedEdges do: [ :inner | 
							inner element border: (BlBorder paint: (Color blue alpha: 0.5)) ] ]  ];
		with: (1 to: 10).
		
		view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 2) ];
		"passive;"
		connect:
			{(1 -> 9).}
			from: #key
			to: #value.
			
	view edges connectFrom: [ :x | x // 2 ]."
	view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 2) ];
		passive;
		connect:
			{(1 -> 12).
			(11 -> 19)}
			from: #key
			to: #value."
			
	view layout tree.
	
	^ view