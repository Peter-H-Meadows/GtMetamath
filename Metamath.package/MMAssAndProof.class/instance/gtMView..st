deprecated
gtMView: aView
	"<gtView>"
"self reparse."
	^ aView mondrian 
		title: 'i3'.
		";
		stencil: [ AssertionAndEssentialHypothesisElement new initializeWith: self ]".

"	view := GtMondrian new.
theProofs := MmPP2ParserFirst database proofs.

numbProofs := theProofs size .

	view nodes
		stencil: [ :each | AssertionAndEssentialHypothesisElement new
											initializeWith: each copy ];
		with:
		( theProofs  copyFrom: 1 to: numbProofs ).

	view layout rectanglePack.
	
	^ view"