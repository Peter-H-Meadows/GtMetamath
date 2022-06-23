accessing
variable

^ '$v' asPParser trim , #any asPParser starLazy flatten  , '$.' asPParser trim ==> 

	[ :x | 
			"Db addVariable: x second ."
	
		 	"self halt ."
	
		VarNames add: x second.
		MmCommentModel new body: x second .
		
	]