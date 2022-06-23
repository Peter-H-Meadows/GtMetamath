accessing
printOn: aStream
	aStream nextPutAll: name .
	aStream nextPutAll: ' ' .
	aStream nextPutAll: 'Free ' .
	
	"aStream nextPutAll: self identityHash printString ."