accessing
proveable2

^ '|-' asPParser trim , body plus trim ==> 

	[ :x | 
	
		MmProveableModel new body: x second first "(MmListModel new body: x second)" 
	
	] 