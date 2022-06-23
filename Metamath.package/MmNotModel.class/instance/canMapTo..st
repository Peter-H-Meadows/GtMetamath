accessing
canMapTo: stuff

stuff isVar ifTrue: [  
	self halt .
	^ stuff canMapTo: self .
] .

stuff class = self class ifFalse: [ ^ false ] .

^ body canMapTo: stuff body .