accessing
scope

^ '${' asPParser trim , ( scope / comment / constant / variable / floatingHypothesis / essentialHypothesis / distinct / assertion / proof )  star , '$}' asPParser trim ==> 

	[ :x | 
		MmScopeModel new with: x second ]