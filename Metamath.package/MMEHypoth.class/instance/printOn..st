printing
printOn: aStream
	aStream nextPutAll: 'Ehypoth ' .
	aStream nextPutAll: isComplete printString .
	aStream nextPutAll: ' ' .
	aStream nextPutAll: name printString .
	aStream nextPutAll: ' ' .
	body printOn: aStream