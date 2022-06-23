accessing
printOn: aStream
aStream nextPutAll: 'list ' .
aStream nextPutAll: body size printString .
aStream nextPutAll: ' ' .

body do: [ :ea |

	aStream nextPutAll: ea printString .
	aStream nextPutAll: ' ' .

]