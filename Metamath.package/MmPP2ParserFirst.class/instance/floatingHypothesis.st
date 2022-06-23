generated
floatingHypothesis

	^ label , '$f' asPParser trim , #any asPParser starLazy flatten
	  , '$.' asPParser trim ==> [ :x | 
	  MMFHypoth new
		  name: x first;
		  rawString: x third ]