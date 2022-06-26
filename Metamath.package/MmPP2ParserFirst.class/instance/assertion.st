accessing
assertion

| thing |
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
		
	"thing constsUsed do: [:ea | ea hasAssertion ifFalse: [ea firstUsed: thing ] ]."
	
	Comments := OrderedCollection new .
		
	"(x first = 'df-dm') ifTrue: [ self halt ].	
	(x first = 'ax-reg') ifTrue: [ self halt ].
	(x first = 'ax5') ifTrue: [ self halt ]."
	
	AllProofs  at: x first put: thing .
	
	Database addAssertion: thing.
		
	thing
]