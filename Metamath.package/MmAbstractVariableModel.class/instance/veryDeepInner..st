accessing
veryDeepInner: copier

"self halt ."

CopyDic at: name ifPresent: [:x |  
		"self becomeForward: x ."
		^ x
	] ifAbsentPut: [ self ] .
