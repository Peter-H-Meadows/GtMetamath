accessing
label2
	"^ #word asPParser plus trim , #any asPParser starLazy flatten  , #space asPParser trim "

	"^ (#word asPParser plus , #space asPParser negate plus optional) trim flatten / '->' asPParser trim ."

	"this should just parse any alphanumeric? but (+) can be label and they can have dots etc"

	"| nc |"

	^ #space asPParser negate plus flatten trim
		==> [  "MmConstantModel new name: x":x | 
			(VarNames includes: x)
				ifTrue: [ VarsUsed add: x.
					VarDict at: x ifAbsentPut: [ MmFreeVariable new name: x ] ]
				ifFalse: [ MmConstantModel new name: x ]	"ConstsUsed add: nc ]" ]	
				
				"/ $$ asPParser / $( asPParser / $) asPParser / ${ asPParser
		/ $} asPParser / $[ asPParser / $] asPParser / '<.' asPParser / '>.' asPParser"