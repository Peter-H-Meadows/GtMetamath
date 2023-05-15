generated
proof

| thing |
^ label , 
	'$p' asPParser trim , 
	#any asPParser starLazy flatten , 
	'$=' asPParser trim , 
	'(' asPParser trim , 
	#any asPParser starLazy flatten , 
	')' asPParser trim , 
	#any asPParser starLazy, 
	'$.' asPParser  trim 
	==> [ :x | 
		Place := Place + 1 .
		"(x first = 'syl') ifTrue: [ self halt ]."
		"(x first = 'ibi') ifTrue: [ self halt ].
		(x first = 'fsumsub') ifTrue: [ self halt ]."
		
		"Place > 6000 ifTrue: [ self halt ].
		Place > 6000 ifTrue: [ self halt ]."
		"Place > 25234 ifTrue: [ self halt ]."
	
		thing := MMProof new name: x first ;
			bodyString: x third ;
			varNames: VarNames copy ; 
			usedString: (x at: 6) ;
			compressed: (x at: 8) ;
			place: Place ;
			prevAssertions: AllProofs copy;
			comments: Comments copy .
			
			"Transcript show: x third ; cr ."
			
			(Bp parse: x third) class = PP2Failure ifTrue: [
			self halt . ] .
			
		"thing reparse ."
			
		Comments := OrderedCollection new .
	
		AllProofs at: x first put: thing .
		Database addProof: thing.
		
		thing
		
	]