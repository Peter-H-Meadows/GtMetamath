testing
ham: x
	| xxx |
	essentialHypoths second asArray do: [ :ea | 
		
			Transcript next
		tab;
		color: Color blue;
		fontSize: 20;
		putAll: ea ;
		cr.
		
		x "asArray first asArray" do: [ :each | 
		
			xxx := each copy.
			
				Transcript next
		tab;
		color: Color black;
		fontSize: 18;
		putAll: 'trying: ' ;
		putAll: xxx;
		cr.
			
			"self halt ."
				 
			( xxx canMapTo: ea ) ifTrue: [ 
			
			Transcript next
		tab;
		color: Color green;
		fontSize: 20;
		putAll: 'success ' ;
		color: Color white;
		fontSize: 20;
		putAll: xxx ;
		cr.
		
					
			Transcript next cr;
	expanded: [ 
		AssertionAndEssentialHypothesisElement new initializeWith: xxx
	]; cr ; cr .
			
				"Transcript show: ea ; cr . "
				
			] ifFalse: [ 
			
				Transcript next
		tab;
		color: Color red;
		fontSize: 20;
		putAll: ' FAIL ' ;
		color: Color gray;
		putAll: xxx ;
		cr.
			
			]
		] 
	]