accessing
exists

^ 'E.' asPParser trim  , label2 trim , ( parentheses / forAll / exists / not / label2) trim ==> 

	[ :x | 
	
		MmExistsModel new first: x second second: x third
	
	] 