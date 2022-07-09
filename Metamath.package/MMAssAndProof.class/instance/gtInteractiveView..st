accessing
gtInteractiveView: aView
	<gtView>

	^ aView explicit 
		title: 'interactive';
		stencil: [ self gameElement2 ]