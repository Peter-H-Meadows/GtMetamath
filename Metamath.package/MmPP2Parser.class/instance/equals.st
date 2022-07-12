accessing
equals

^ (parentheses / squareBrackets / curlyBraces / label2) , $= asPParser trim  , (parentheses / label2)  ==> 

	[ :x | 
	
		MmEqualsModel new first: x first second: x third   
	
	] 