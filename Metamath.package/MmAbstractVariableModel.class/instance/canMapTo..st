printing
canMapTo: stuff

"if I'm free, easy, map to stuff and return true.

if I'm mapped, return mappedTo canMapTo: stuff .

if I'm fixed, return stuff canMapToFixedVariable: stuff."

self halt.

real ifNotNil: [

self announcer announce: (MmVariableMappedAnnouncement new mappedTo: stuff ) .

^ real canMapTo: stuff ].

^ false 

"count := count + 1 .

count > 20 ifTrue: [ count := 0 . self halt ] .

self isFreeVar ifTrue: [  
		
	mappedTo := stuff .
	mapped := true .
	fixed := false .
	
	self announcer announce: (MmVariableMappedAnnouncement new mappedTo: stuff ) .
	
	^ true	
] .

fixed ifTrue: [  
	
	stuff fixed ifTrue: [ ^ name = stuff name ] .
	
	^ stuff canMapToFixed: self

] .

^ mappedTo canMapTo: stuff"