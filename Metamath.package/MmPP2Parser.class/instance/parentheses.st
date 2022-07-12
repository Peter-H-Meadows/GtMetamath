accessing
parentheses
	^ $( asPParser trim , (implies / impliesBi / or / and3 / and / member / union) , $) asPParser trim ==> 

		[ :x | MmParensModel new body: x second . ]
