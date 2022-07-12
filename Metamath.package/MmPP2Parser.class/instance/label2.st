accessing
label2
	"^ #word asPParser plus trim , #any asPParser starLazy flatten  , #space asPParser trim "

	"^ (#word asPParser plus , #space asPParser negate plus optional) trim flatten / '->' asPParser trim ."

	"this should just parse any alphanumeric? but (+) can be label and they can have dots etc"

	"| nc |"
	^ (#space asPParser "/ $$ asPParser / $( asPParser / $) asPParser / ${ asPParser
		/ $} asPParser / $[ asPParser / $] asPParser / '<.' asPParser / '>.' asPParser")
		negate plus flatten trim
		==> [ :x | MmConstantModel new name: x
			"(VarNames includes: x)
				ifTrue: [ VarsUsed add: x.
					VarDict at: x ifAbsentPut: [ MmFreeVariable new name: x ] ]
				ifFalse: [ nc := MmPP2ParserFirst constDict
							at: x
							ifAbsent: [ MmConstantModel new name: x ].
					ConstsUsed add: nc ]" ]