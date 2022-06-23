accessing
parentheses
	^ $( asPParser trim , body asPParser plus , $) asPParser trim ==> 

		[ :x | MmParensModel new body: x second . ]