testing
ham: assertions
	| ass |
	essentialHypoths second asArray do: [ :ea | 
		
			Transcript next
		tab;
		color: Color blue;
		fontSize: 20;
		putAll: ea ;
		cr.
		
		assertions "asArray first asArray" do: [ :each | 
		
			ass := each copy.
			
				Transcript next
		tab;
		color: Color black;
		fontSize: 18;
		putAll: 'trying: ' ;
		putAll: ass;
		cr.
			
			"self halt ."
				 
			( ass canMapTo: ea ) ifTrue: [ 
			
			Transcript next
		tab;
		color: Color green;
		fontSize: 20;
		putAll: 'success ' ;
		color: Color white;
		fontSize: 20;
		putAll: ass ;
		cr.
		
					
			Transcript next cr;
	expanded: [ 
		AssertionAndEssentialHypothesisElement new initializeWith: ass
	]; cr ; cr .
			
				"Transcript show: ea ; cr . "
				
			] ifFalse: [ 
			
				Transcript next
		tab;
		color: Color red;
		fontSize: 20;
		putAll: ' FAIL ' ;
		color: Color gray;
		putAll: ass ;
		cr.
			
			]
		] 
	]