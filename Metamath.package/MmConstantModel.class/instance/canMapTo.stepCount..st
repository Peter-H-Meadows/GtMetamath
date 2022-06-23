accessing
canMapTo: other stepCount: step

other isVar ifTrue: [  
	
	^ other canMapTo: self stepCount: step .
] .

	name = other name ifTrue: [  
		
		other isConst ifTrue: [ ^ #success ] ifFalse: [ self halt ] .
	
	] .

self announcer announce: ( MmFailedToMapAnnouncement new reason: 'const' ) .

^ #fail