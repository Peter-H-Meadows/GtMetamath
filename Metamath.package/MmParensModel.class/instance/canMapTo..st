testing
canMapTo: stuff

stuff isVar ifTrue: [  
	
	^ stuff canMapTo: self .
] .

stuff isParens ifFalse: [ 
	self announcer announce: 
	( MmFailedToMapAnnouncement new reason: 'no match paren' ) .
	^ false .
] .

^ body canMapTo: stuff body .

