accessing
parentheses
	^ $( asPParser trim , p2 trim , $) asPParser trim ==> 

		[ :x | MmParensModel new body: x second . ]
