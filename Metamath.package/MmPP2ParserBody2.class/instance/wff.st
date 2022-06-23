accessing
wff

^ 'wff' asPParser trim  , body ==> 

	[ :x | 
	
		MmWffModel new body: x second 
	
	] 