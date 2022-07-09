accessing
parentheses
	^ $( asPParser trim , p2 , $) asPParser trim ==> 

		[ :x | MmParensModel new body: x second . ]
