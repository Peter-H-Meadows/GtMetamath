generated
proof

| thing mm |
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
		"(x first = 'syli') ifTrue: [ self halt ].
		(x first = 'jaao') ifTrue: [ self halt ]."
		
		"(x first = 'ibi') ifTrue: [ self halt ].
		(x first = 'fsumsub') ifTrue: [ self halt ]."
		
		"Place > 6000 ifTrue: [ self halt ].
		Place > 6000 ifTrue: [ self halt ]."
		"Place > 25234 ifTrue: [ self halt ]."
		
		mm := Dictionary new .
		
		"VarNameToObDict keysDo: [:ekey | mm at:  ekey put: (MmFreeVariable new name: ekey ).] .
	VarNameToObDict := mm."
	
		thing := MMProof new name: x first ;
			bodyString: x third ;
			varNames: VarNames copy ; 
			varDict: VarNameToObDict copy ; 
			usedString: (x at: 6) ;
			compressed: (x at: 8) ;
			place: Place ;
			prevAssertions: AllProofs copy;
			comments: Comments copy .
			
			"Transcript show: x third ; cr ."
			
			"(Bp parse: x third) class = PP2Failure ifTrue: [
			self halt . ] ."
			
		"thing reparse ."
			
		Comments := OrderedCollection new .
		
		"(x first = 'alnex') ifTrue: [ self halt ]."
		"(x first = 'trujust') ifTrue: [ self halt ]."
	
		AllProofs at: x first put: thing .
		Database addProof: thing.
		
		(x first = '2alimi') ifTrue: [ self halt ].
		
		thing
		
	]