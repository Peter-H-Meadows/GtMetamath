accessing
squareBrackets
	^ $[ asPParser trim , label2 trim , '/' asPParser trim , label2 trim , $] asPParser trim , primary asPParser trim ==> 

		[ :x | MmSquareBracetsModel new first: x second second: x fourth   . ]