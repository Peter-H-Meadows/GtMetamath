accessing
printOn: aStream
	aStream nextPutAll: name .
	aStream nextPutAll: ' ' .
	
	fixed ifTrue: [ 
		aStream nextPutAll: 'Fixed ' . 
	] ifFalse: [
	
		mappedTo ifNil: [ aStream nextPutAll: 'Free ' ] ifNotNil: [
			aStream nextPutAll: 'Mapped '
		 ].
	].
	
	aStream nextPutAll: self identityHash printString .