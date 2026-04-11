as yet unclassified
squareBrackets
	^ $[ asPParser trim , label trim , '/' asPParser trim , label trim , $] asPParser trim , terms ==> 

		[ :x | MmSquareBracetsModel new first: x second second: x fourth   . ]