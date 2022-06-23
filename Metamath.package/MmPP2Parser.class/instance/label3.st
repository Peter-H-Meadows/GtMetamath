accessing
label3

"^ #word asPParser plus trim , #any asPParser starLazy flatten  , #space asPParser trim "

"^ (#word asPParser plus , #space asPParser negate plus optional) trim flatten / '->' asPParser trim ."

"this should just parse any alphanumeric? but (+) can be label and they can have dots etc"

"^ ( #space asPParser / $$ asPParser / $( asPParser / $) asPParser ) negate plus flatten trim ==>" 

"^ #word asPParser plus flatten trim ==>"

^  (#space asPParser ) negate plus flatten trim ==>

	[ :x | Db varOrConst: x ]

