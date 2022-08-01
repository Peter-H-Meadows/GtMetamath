accessing
notFree

^ 'F/' asPParser trim  , p5 , p5 ==> 

	[ :x | 
	
		MmNotFreeModel new first: x second second: x third
	
	] 