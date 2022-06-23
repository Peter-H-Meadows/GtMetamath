accessing
canMapTo: other 

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
other isConst ifTrue: [
	
	^ name = other name 
	
	"iTrue: [ ^ true ] ifFalse: [ self halt ] ."
	
	] .

^ false