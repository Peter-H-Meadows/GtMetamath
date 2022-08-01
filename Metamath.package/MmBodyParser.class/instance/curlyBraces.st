accessing
curlyBraces
	^ ${ asPParser trim , p4 , $| asPParser trim, p4 , $} asPParser trim ==> 

		[ :x | MmCurlyBracesModel new body: x second ]