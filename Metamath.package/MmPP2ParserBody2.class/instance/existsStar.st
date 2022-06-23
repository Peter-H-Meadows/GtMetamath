accessing
existsStar

^ 'E*' asPParser trim  , label trim , body ==> 

	[ :x | 
	
		MmExistsStarModel new first: x second second: x third 
	
	] 