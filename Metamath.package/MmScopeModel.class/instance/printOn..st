printing
printOn: aStream
	aStream nextPutAll: proofs first name .
	aStream nextPutAll: ' Scope. size: ' .
	aStream nextPutAll: proofs size printString .