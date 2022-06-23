testing
canMapTo: stuff

stuff isVar ifTrue: [  
	self error .
	^ stuff canMapTo: self .
] .

"stuff isProvable ifFalse: [ self announcer announce: ( MmFailedToMapAnnouncement new reason: 'no match provable' ) . ^ false ] ."


body canMapTo: stuff body .

^ true .