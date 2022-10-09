accessing
printOn: aStream
	aStream nextPutAll: name .
	aStream nextPutAll: ' ' .
	aStream nextPutAll: 'MAPPED 
	' .
	aStream nextPutAll: mappedTo printString .
	aStream nextPutAll: ' END ' 