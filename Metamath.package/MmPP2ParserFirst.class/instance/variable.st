generated
variable

	^ '$v' asPParser trim , #any asPParser starLazy flatten
	  , '$.' asPParser trim ==> [ :x | 
	  	VarNames add: x second.
	  	( MmCommentModel new body: x second ) ]