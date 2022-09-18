printing
printOn: aStream
	aStream nextPutAll: 'Ehypoth ' .
	aStream nextPutAll: name printString .
	aStream nextPutAll: ' ' .
	body printOn: aStream