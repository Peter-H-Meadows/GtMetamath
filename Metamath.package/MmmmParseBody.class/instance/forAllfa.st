as yet unclassified
forAllfa
^ 'A.' asPParser trim ,
	label , 'A.' asPParser trim , label , terms ==> 

	[ :x | 
	
		MmForAllModel new first: x second second: x fourth
	
	] 