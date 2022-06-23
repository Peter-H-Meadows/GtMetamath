accessing
comment

| com |
^ '$(' asPParser trim , #any asPParser starLazy flatten  , '$)' asPParser trim ==> 

	[ :x | 
	
		x second first = $= ifTrue: [ 
		
			"self halt .
		
			x second lines second ."
		
		] .
		
	
		"com :=" MmCommentModel new body: x second . 
		"Db lastComment: com .
		com."
	]

