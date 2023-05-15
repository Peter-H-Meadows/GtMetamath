accessing
assertion

| thing pp pf ss |
^  label , '$a' asPParser trim ,  #any asPParser starLazy flatten  , '$.' asPParser trim ==> 

	[ :x | 
	
	Place := Place + 1 .
	thing := MMAssertion new  
		name: x first ; 
		rawString: x third ;
		bodyString: x third ;
		place: Place ;
		varNames: VarNames copy ; 
		comments: Comments copy .
		
	"thing reparse ."
	

	
	ss := x third substrings .
	
	ss first = 'wff' ifTrue: [
	"pf := Bp wffdel child ."
	
	pf := nil.
	
	 ss allButFirst do: [ :ea | 
	
		self halt.
	
		(VarNames includes: ea) ifTrue: [
			pp := (VarNames at: ea) type .
			"(ea = 'x' or: [ ea = 'y' ] or: [ ea = 'y' ]) ifTrue: [ pp := ea asPParser trim ] ifFalse: [
			pp := Bp wffdel . ]"
		] ifFalse: [
			pp := ea asPParser trim
		].
		
		pf ifNil: [ pf := pp ] ifNotNil: [  pf := pf , pp ].
		
	] .
	
	""
	
	WffPP child: WffPP child / pf .
	
		
	] ifFalse: ["self halt"].
		
	"thing constsUsed do: [:ea | ea hasAssertion ifFalse: [ea firstUsed: thing ] ]."
	
	Comments := OrderedCollection new .
		
	"(x first = 'df-dm') ifTrue: [ self halt ].	
	(x first = 'ax-reg') ifTrue: [ self halt ].
	(x first = 'ax5') ifTrue: [ self halt ]."
	
	AllProofs  at: x first put: thing .
	
	Database addAssertion: thing.
		
	thing
]