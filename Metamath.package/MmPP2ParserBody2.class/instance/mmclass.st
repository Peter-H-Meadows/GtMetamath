accessing
mmclass

^ 'class' asPParser trim  , body ==> 

	[ :x | 
	
		MmWffModel new body: x second 
	
	] 