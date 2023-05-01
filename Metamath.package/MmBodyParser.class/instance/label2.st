accessing
label2
	"^ #space asPParser negate plus flatten trim"
	^ #word asPParser plus flatten trim
		==> [ :x | 
			(MmPP2ParserFirst varNames includes: x)
				ifTrue: [ VarsUsed add: x.
					VarDict at: x ifAbsentPut: [ MmFreeVariable new name: x ] ]
				ifFalse: [ MmConstantModel new name: x ] ]