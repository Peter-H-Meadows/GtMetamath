printing
printOn: aStream

"aStream nextPutAll: 'proof '."

aStream nextPutAll: place printString .

aStream nextPutAll: ' ' .
aStream nextPutAll: name  .
aStream nextPutAll: ' ' .
aStream nextPutAll: bodyString1 "printString" "used" .

"self allVariables do: [ :ea |  aStream nextPutAll: ea printString  . ]"


	