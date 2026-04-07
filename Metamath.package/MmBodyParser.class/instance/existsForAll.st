accessing
existsForAll

^ 'E.' asPParser trim  , label2 ,'A.' asPParser trim  , label2 , p5 ==> 

	[ :x | 
	
		MmExistsForAllMod new first: x second second: x fourth third: x sixth
	
	] 