copying
postCopy 

"copy ifNotNil: [ self halt ] ."
"color := Color random."
"name := 'oETYuAZFHXVMisn%~#*+' atRandom asString ."

announcer := Announcer new .
"self halt."

CopyDic at: name ifPresent: [:x |  
		self becomeForward: x .
	] ifAbsentPut: [ self ] .
	
	
	"
(CopyDic at: (name ifAbsentPut: [self])) ifNil: [
	CopyDic at: name put: self
] ifNotNil: [

	self becomeForward: (CopyDic at: name)

]."

"copy ifNil: [copy := self shallowCopy. ^ copy ].

self becomeForward: copy .

^ copy 
"
