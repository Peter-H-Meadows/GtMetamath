accessing
printOn: aStream
	aStream nextPutAll: name .
	aStream nextPutAll: ' ' .
	aStream nextPutAll: 'Fixed ' .
	
	"aStream nextPutAll: self identityHash printString ."