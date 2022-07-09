accessing
gtInteractive2View: aView
	<gtView>

	^ aView explicit 
		title: 'interactive2';
		stencil: [ AssertionAndEssentialHypothesisElement new initializeWith: self ]