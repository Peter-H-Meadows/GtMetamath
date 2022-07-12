accessing
forAll

^ 'A.' asPParser trim  , label2 trim , ( parentheses / forAll / exists / not / label2) trim ==> 

	[ :x | 
	
		MmForAllModel new first: x second second: x third
	
	] 