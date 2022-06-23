accessing
wff

^ ('wff' asPParser trim / 'class' asPParser trim) , list ==> 

	[ :x | 
	
		MmWffModel new body: x second 
	
	] 