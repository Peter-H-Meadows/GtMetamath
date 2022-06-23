testing
canMapToFixed: stuff

self isFreeVar ifTrue: [  
		
	mappedTo := stuff .
	mapped := true .
	fixed := false .
	
	self announcer announce: (MmVariableMappedAnnouncement new mappedTo: stuff ) .
	
	^ true	
] .

fixed ifTrue: [  
	
	stuff fixed ifTrue: [ ^ true ] .
	^ true
	"^ stuff canMapToFixed: self"

] .


^ mappedTo canMapTo: stuff 
