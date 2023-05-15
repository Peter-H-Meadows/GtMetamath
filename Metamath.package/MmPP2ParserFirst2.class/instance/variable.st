generated
variable

	^ '$v' asPParser trim , #any asPParser starLazy flatten
	  , '$.' asPParser trim ==> [ :x | 
	  	VarNames add: (MmFreeVariable new name: x second).
	  	( MmCommentModel new body: x ) ]