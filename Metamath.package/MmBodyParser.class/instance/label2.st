accessing
label2
	"^ #space asPParser negate plus flatten trim"
	^ #word asPParser plus flatten trim
		==> [ :x | 
			(MmPP2ParserFirst2 varNames includes: x)
				ifTrue: [ VarsUsed add: x.
					VarDict at: x ifAbsentPut: [ MmFreeVariable new name: x ] ]
				ifFalse: [ self halt. MmConstantModel new name: x ] ]