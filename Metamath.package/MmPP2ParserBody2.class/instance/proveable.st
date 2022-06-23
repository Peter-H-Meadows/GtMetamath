accessing
proveable

^ '|-' asPParser trim , body plus , '$=' asPParser trim, $( asPParser, (label / not) trim star , $) asPParser, "#any asPParser starLazy flatten" label trim ==> 

	[ :x | 
	
		MmProveableModel new body: x second first 
			"(MmListModel new body: x second)" ; 
			assertionsUsed: (x at: 5)
	
	] 