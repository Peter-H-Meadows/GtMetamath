accessing
gtBoboView: aView
	<gtView>
	^ aView explicit 
		title: 'interactive';
		stencil: [ proofs first gameElement2 ]