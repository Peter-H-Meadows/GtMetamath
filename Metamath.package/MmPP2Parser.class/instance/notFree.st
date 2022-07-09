accessing
notFree

^ 'F/' asPParser trim  , label2 trim , primary ==> 

	[ :x | 
	
		MmNotFreeModel new first: x second second: x third
	
	] 