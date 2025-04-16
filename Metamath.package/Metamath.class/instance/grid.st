accessing
grid
<gtExample>
	| view theProofs numbProofs |
	view := GtMondrian new.
theProofs := MmPP2ParserFirst database proofs.

numbProofs := theProofs size .

	view nodes
		stencil: [ :each | AssertionAndEssentialHypothesisElement new
											initializeWith: each vcopy ];
		with:
		( theProofs "reverse" copyFrom: 1 "numbProofs - 18" to: numbProofs ).

	view layout rectanglePack.
	
	^ view