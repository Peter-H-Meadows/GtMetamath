accessing
notEquals

^ (parentheses / label2) trim , '=/=' asPParser trim  , (parentheses / label2)  ==> 

	[ :x | 
	
		MmEqualsModel new first: x first second: x third   
	
	] 