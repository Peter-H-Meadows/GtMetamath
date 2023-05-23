accessing
constant
	| nn |
	^ ('$c' asPParser trim , #any asPParser starLazy flatten , '$.' asPParser trim)
		==> [ :x | 
			"nn := x second" "= '(' ifTrue: [ 'o' ] ifFalse: [ x second ]".
			VarDict
				at: x second
				put: x second asPParser trim ==> [ :zz | MmConstantModel new name: x second ].
			ConstDict
				at: x second
				put: (MmConstantModel new
						name: x second;
						comment: Comments copy) ]