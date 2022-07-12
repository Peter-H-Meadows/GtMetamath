accessing
notFree

^ 'F/' asPParser trim  , label2 trim , p3 ==> 

	[ :x | 
	
		MmNotFreeModel new first: x second second: x third
	
	] 