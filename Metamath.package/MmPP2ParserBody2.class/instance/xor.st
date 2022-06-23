accessing
xor

^ $( asPParser trim , body , '\/_' asPParser trim  , body , $) asPParser trim  ==> 

	[ :x | 
	
		MmXorModel new first: x second second: x fourth   
	
	] 