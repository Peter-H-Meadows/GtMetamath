as yet unclassified
parentheses
	^ $( asPParser trim , terms , $) asPParser trim ==> 

		[ :x | "self halt."
			
			 MmParensModel new body: x second . ]
