generated
essentialHypothesis

^  label , '$e' asPParser trim ,  #any asPParser starLazy flatten  , '$.' asPParser trim ==> 

	[ :x | MMEHypoth new name: x first ; rawString: x third  "; varNames: VarNames copy" .
		
	]