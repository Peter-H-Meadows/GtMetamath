accessing
parentheses2
	^ $( asPParser trim , terms , $) asPParser trim ==> 

		[ :x | "self halt."
			
			 MmParensModel new body: x second . ]
