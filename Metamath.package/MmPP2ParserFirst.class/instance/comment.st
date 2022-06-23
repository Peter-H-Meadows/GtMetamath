accessing
comment

^ '$(' asPParser trim , 
	#any asPParser starLazy flatten , 
	'$)' asPParser trim 
	==> [ :x |
	
		comment := MmCommentModel new body: x second .
		Database addComment: comment.
		
		Comments add: comment .
	]
