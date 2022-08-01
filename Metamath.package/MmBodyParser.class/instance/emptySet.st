accessing
emptySet
	^ "$( asPParser , $/ asPParser , $)" '(/)' asPParser flatten  trim ==> 

		[ :x | MmConstantModel new name: x "second" ]