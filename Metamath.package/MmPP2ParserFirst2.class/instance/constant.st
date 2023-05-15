accessing
constant

	^ '$c' asPParser trim , #any asPParser starLazy flatten
	  , '$.' asPParser trim
	  ==> [ :x | "self halt." 
	  	ConstDict at: x second put: 
	  		((MmConstantModel new name: x second ; comment: Comments copy )). ]