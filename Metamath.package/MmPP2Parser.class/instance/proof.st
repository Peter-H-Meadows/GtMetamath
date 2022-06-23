accessing
proof
^ ',.,.,.,hdxcs' asPParser
	"| mproof |
	^ label , '$p' asPParser , (wff / proveable) trim
	  , '$=' asPParser trim , $( asPParser , label star , $) asPParser
	  , #any asPParser starLazy flatten , '$.' asPParser trim
	  ==> [ :x | 
		  mproof := MMProof new
			            name: x first;
			            body: x third;
			            prevAssertions: AllAssertions copy;
			            assertionsUsed: (x at: 6).

		  AllAssertions at: mproof name put: mproof.
		  AllProofs add: mproof.

		  mproof ]"