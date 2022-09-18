accessing
printOn: aStream
aStream nextPutAll: 'ASS '.
aStream nextPutAll: name asString .
aStream nextPutAll: ' '.
body printOn: aStream