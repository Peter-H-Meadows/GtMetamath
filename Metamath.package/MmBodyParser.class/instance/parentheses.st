accessing
parentheses
	^ $( asPParser trim , ( intersection / implies / impliesBi / forAll / or / and3 / and / member / union ) , $) asPParser trim ==> 

		[ :x | "self halt."
			Cow := Cow + 1 . Cow > 50 ifTrue: [ Cow := 0 . self halt ].
			
			 MmParensModel new body: x second . ]
