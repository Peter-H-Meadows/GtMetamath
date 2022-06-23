accessing
label

"^ #word asPParser plus flatten trim ==> "

^ (#word asPParser plus, ( $- asPParser / $. asPParser, #word asPParser plus ) plus optional) flatten ==>

	[ :x | " Db varOrConst: x" 
	
		(VarNames includes: x) ifTrue: [  
	
			 VarDict at: x ifAbsentPut: [ MmFreeVariable new name: x ]
			"VarsUsed add: x .
			MmAbstractVariableModel new name: x"

		] ifFalse: [

 			MmConstantModel new name: x .
		]
	]