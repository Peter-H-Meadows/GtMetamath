accessing
angBrackets
	^ '<.' asPParser trim , list , '>.' asPParser trim ==> 

		[ :x | MmSquareBracetsModel new body: x second . ]