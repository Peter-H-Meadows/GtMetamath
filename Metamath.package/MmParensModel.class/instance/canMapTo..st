testing
canMapTo: stuff

stuff isVar ifTrue: [  
	
	^ stuff canMapTo: self .
] .

stuff isList ifTrue: [  
	
	self halt .

	^ self canMapTo: stuff body first .	
] .

stuff isParens ifFalse: [ self announcer announce: ( MmFailedToMapAnnouncement new reason: 'no match paren' ) . ^ false ] .

^ body canMapTo: stuff body .

