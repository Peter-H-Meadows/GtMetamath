generated
floatingHypothesis

	| pf vname |
	^ label , '$f' asPParser trim ,
	#word asPParser plus flatten trim , #word asPParser plus  flatten trim "label , label" "#any asPParser starLazy flatten"
	  , '$.' asPParser trim ==> [ :floatParts | 
	  
	  "self halt ."
	  
	  vname := floatParts fourth .
	  
	  (floatParts third = 'wff') ifTrue: [
	  
	  	VarNameToObDict at: vname put: (MmFreeVariable new name: vname) .
	  	
	  	pf := vname asPParser trim ==> [ :xi | 
			 VarNameToObDict at: xi  ].
			 
			 
	  	"Bp wffdel child: Bp wffdel child / pf ."
	  	
	  	WffPP child ifNil: [ WffPP child: pf ] ifNotNil: [
	  	WffPP child: WffPP child / pf .] .
	  	
	  	VarDict at: vname put: WffPP .
	  	
	  	
	  	
	  	"(Bp parse: '|- ph') class = PP2Failure ifTrue: [
			self halt . ] ."
	  	
	  ] ifFalse: [
	   	""
	   	
	   	VarNameToObDict at: vname put: (MmSetvarVariableModel new name: vname) .
	   	
	   	pf := vname asPParser trim ==> 
	   		[ :xi | VarNameToObDict at: xi .
	   		"MmSetvarVariableModel new name: vname" ].
		
	  	"Bp wffdel child: Bp wffdel child / pf ."
	  	
	  	
	  	ClassPP child ifNil: [ ClassPP child: pf ] ifNotNil: [ 
	  	ClassPP child: ClassPP child / pf .] .
	  	
	  	VarDict at: vname put: ClassPP .
	  	
	  	
	  	"VarDict
				at: vname
				put: ( vname asPParser trim ==> [ :zz | MmSetvarVariableModel new name: vname ] )."
	  
	  
	  ] .
	  
	  MMFHypoth new
		  name: floatParts first;
		  rawString: floatParts third ]