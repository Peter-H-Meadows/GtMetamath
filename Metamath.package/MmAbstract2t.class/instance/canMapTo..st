accessing
canMapTo: stuff

stuff isVar ifTrue: [  
	self halt .
	^ stuff canMapTo: self .
] .

	self class = stuff class ifFalse: [ ^ false ] .
	
	^ ( first canMapTo: stuff first ) and: [ second canMapTo: stuff second ]
	