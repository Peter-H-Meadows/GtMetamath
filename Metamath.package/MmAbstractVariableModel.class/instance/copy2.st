copying
copy2 

self halt .

fixed ifTrue: [ ^ self ] .

copy ifNotNil: [ ^ copy ] .

copy := self shallowCopy postCopy .

^ copy