accessing
parentheses
	^ $( asPParser trim ", #space asPParser trim" , list , $) asPParser ", #space asPParser" trim ==> 

		[ :x | MmParensModel new body: x second . ]
