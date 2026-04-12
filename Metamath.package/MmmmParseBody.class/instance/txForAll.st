as yet unclassified
txForAll
^ 'A.' asPParser flatten trim  ==> 

	[ :x | 
	
		MmConstantModel new initializeWith: x
	
	] 