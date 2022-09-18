printing
printOn: aStream

aStream nextPutAll: ' PROOF ' .

aStream nextPutAll: name  .
aStream nextPutAll: ' ' .
"aStream nextPutAll: bodyString1." 

body printOn: aStream.