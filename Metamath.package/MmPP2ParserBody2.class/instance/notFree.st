accessing
notFree

^ 'F/' asPParser trim  , label trim , body ==> 

	[ :x | 
	
		MmNotFreeModel new first: x second second: x third
	
	] 