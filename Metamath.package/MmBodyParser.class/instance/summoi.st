accessing
summoi
"wff if- ( ph , ps , ch )"
	^ label2 trim , '(' asPParser trim , p4 trim , ',' asPParser trim , p4 trim , ',' asPParser trim , p4 trim , ')' asPParser trim ==> 

		[ :x | MmSquareBracetsModel new first: x second second: x fourth   . ]