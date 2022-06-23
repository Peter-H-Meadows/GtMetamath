accessing
constant

^ '$c' asPParser trim , #any asPParser starLazy flatten , '$.' asPParser trim ==> 

	[ :x | MmConstantModel new name: x second ]