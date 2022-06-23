accessing
canMapTo: other level: lvl

( other isKindOf: MmAbstractVariableModel ) ifTrue: [  
	
	^ other canMapTo: self level: lvl - 1 .
] . 


( other isKindOf: MmConstantModel ) ifFalse: [ ^ false ] .

^ name = other name