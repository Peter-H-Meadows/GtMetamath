accessing
member

^ (parentheses / label2) trim , 'e.' asPParser trim  , (parentheses / curlyBraces / label2) trim  ==> 

	[ :x | 
	
		MmMemberModel new first: x first second: x third   
	
	] 