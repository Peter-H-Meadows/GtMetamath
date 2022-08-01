accessing
label

"^ #word asPParser plus flatten trim "

^ ( #space asPParser  / $$ asPParser / $( asPParser / $) asPParser ) negate plus flatten trim

"^ (#word asPParser plus, ( $- asPParser / $. asPParser, #word asPParser plus ) plus optional) flatten "

"^ (#word asPParser ,	( #space asPParser ) negate plus flatten trim ) flatten"
	
"^ #word asPParser plus trim flatten"

"^ (#word asPParser plus trim , ( $- asPParser / $. asPParser ) optional) trim flatten"

"( ( $- asPParser / $. asPParser ) , #word asPParser plus) optional , ( ( $- asPParser / $. asPParser ) , #word asPParser plus) optional) flatten 
"
