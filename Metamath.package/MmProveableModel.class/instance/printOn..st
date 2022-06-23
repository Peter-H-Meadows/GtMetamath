accessing
printOn: aStream
aStream nextPutAll: '|- '.
aStream nextPutAll: body printString .