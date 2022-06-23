printing
printOn: aStream
	aStream nextPutAll: name .
	aStream nextPutAll: ' ??? ' .
	"aStream nextPutAll: self identityHash printString ."
	
	"fixed ifTrue: [ aStream nextPutAll: 'FIX ' . ] .
	mapped ifTrue: [ aStream nextPutAll: 'MAP ' . ] .
	
	real ifNotNil: [aStream nextPutAll: real identityHash printString .]."
	
	
	
	"aStream nextPutAll: fullname printString ."
	
	"fixed ifTrue: [ aStream nextPutAll: 'FIXED.' ] .
	mapped ifTrue: [ aStream nextPutAll: 'MAPPED.' ] ."
	
	"aStream nextPutAll: level printString .
	aStream nextPutAll: '.' ."
	
"	Vars ifNotNil: [  
	
(Vars contains: self) ifTrue: [ aStream nextPutAll: ' MAPPED ' ] ifFalse: [ aStream nextPutAll: ' free ' ] .

] ."