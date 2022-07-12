accessing
gtInteractive2View: aView
	<gtView>
self reparsex.
	^ aView explicit 
		title: 'i2';
		stencil: [ "AssertionAndEssentialHypothesisElement new initializeWith: self" body gameElement background: Color veryVeryDarkGray ]