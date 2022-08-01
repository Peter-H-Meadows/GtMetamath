accessing
squareBrackets2
	^ '[.' asPParser trim , label2 trim , '/' asPParser trim , label2 trim , '].' asPParser trim , p4 ==> 

		[ :x | MmSquareBracetsModel new first: x second second: x fourth   . ]