accessing
squareBrackets3
	^ '[_' asPParser trim , label2 trim , '/' asPParser trim , label2 trim , ']_' asPParser trim , p4 ==> 

		[ :x | MmSquareBracetsModel new first: x second second: x fourth   . ]