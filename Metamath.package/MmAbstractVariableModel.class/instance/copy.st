copying
copy 

fixed ifTrue: [ ^ self ] .

copy ifNotNil: [ ^ copy ] .

copy := self shallowCopy postCopy .

^ copy