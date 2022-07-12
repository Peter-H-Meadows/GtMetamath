accessing
gtInteractive3View: aView
	<gtView>
self reparse.
	^ aView explicit 
		title: 'i3';
		stencil: [ AssertionAndEssentialHypothesisElement new initializeWith: self ]