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
	
	ss := x third substrings .
	
	ss first = 'wff' ifTrue: [
	
	pf := nil.
	
	 ss allButFirst do: [ :ea | 
	
		pp := VarDict at: ea  .
			
		pf ifNil: [ pf := pp ] ifNotNil: [  pf := pf , pp ].
		
	] .
	
	WffPP child: WffPP child / ( pf ==> 

		[ :xd | "self halt." "MmParensModel" MmListModel new body: xd . ] ).
	
	"(WffPP parse: x third) class = PP2Failure ifTrue: [
			self halt . ] ."
	
		
	] ifFalse: ["self halt"].
		
	"thing constsUsed do: [:ea | ea hasAssertion ifFalse: [ea firstUsed: thing ] ]."
	
	Comments := OrderedCollection new .
		
	(x first = 'df-dm') ifTrue: [ self halt ].	
	(x first = 'ax-reg') ifTrue: [ self halt ].
	(x first = 'ax5') ifTrue: [ self halt ].
	
	AllProofs  at: x first put: thing .
	
	Database addAssertion: thing.
		
	thing
]