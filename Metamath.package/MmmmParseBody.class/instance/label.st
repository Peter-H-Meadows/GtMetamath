as yet unclassified
label
	"^ #space asPParser negate plus flatten trim"
	^ #word asPParser plus flatten trim
		==> [ :x | VarDict at: x ifAbsentPut: [ MmFreeVariable new name: x ] ]