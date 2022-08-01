accessing
subset

^ ( parentheses / curlyBraces / label2) trim , 'C_' asPParser trim  , ( parentheses / curlyBraces / label2) trim  ==> 

	[ :x | 
	
		MmEqualsModel new first: x first second: x third   
	
	] 