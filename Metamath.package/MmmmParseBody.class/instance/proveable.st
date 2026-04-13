as yet unclassified
proveable

^ ( '|-' asPParser trim / 'wff'  asPParser trim / 'class'  asPParser trim ) , terms   ==> 

	[ :x | 

		MmProveableModel new body: x second 
	
	] 