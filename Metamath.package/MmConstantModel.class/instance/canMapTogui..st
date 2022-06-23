accessing
canMapTogui: other 

"( other isKindOf: MMVariable ) ifTrue: [  
	
	^ other canMapTo: self .
] .

( other isKindOf: MMVariableMapped ) ifTrue: [  
	self halt .
	^ other canMapTo: self .
] ."

other isVar ifTrue: [  
	
	^ other canMapTo: self .
] .

	name = other name ifTrue: [  
		
		other isConst ifTrue: [ ^ true ] ifFalse: [ self halt ] .
	
	] .

^ false