accessing
parentheses
	^ $( asPParser trim , ( intersection "/ s" / implies / impliesBi / or / and3 / and / member / union ) , $) asPParser trim ==> 

		[ :x | "self halt." MmParensModel new body: x second . ]
