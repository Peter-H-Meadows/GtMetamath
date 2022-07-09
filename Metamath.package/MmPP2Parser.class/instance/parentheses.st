accessing
parentheses
	^ $( asPParser trim , primary , $) asPParser trim ==> 

		[ :x | MmParensModel new body: x second . ]
