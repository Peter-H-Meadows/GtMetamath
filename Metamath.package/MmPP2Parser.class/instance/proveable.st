accessing
proveable

^ '|-' asPParser trim , "list" primary  ==> 

	[ :x |
	"(x second isArray ifTrue: [self halt.])."
	
		MmProveableModel new body: x second 
	
	] 