accessing
printOn: aStream

aStream nextPutAll: ' -> ' .
aStream nextPutAll: first printString .
aStream nextPutAll: ' -> ' .
aStream nextPutAll: second printString .