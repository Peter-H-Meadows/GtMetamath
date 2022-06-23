accessing
varSubst

^ '[' asPParser trim  , label trim , '/' asPParser trim , label trim  , ']' asPParser trim , label trim ==> 

	[ :x | 
	
		MmNotModel new body: x second 
	
	] 