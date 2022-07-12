accessing
parentheses
	^ $( asPParser trim , (implies / impliesBi / or / and) , $) asPParser trim ==> 

		[ :x | MmParensModel new body: x second . ]
