accessing
curlyBraces
	^ ${ asPParser trim , list , $} asPParser trim ==> 

		[ :x | MmCurlyBracesModel new body: x second ]