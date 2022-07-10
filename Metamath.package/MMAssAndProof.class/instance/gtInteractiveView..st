accessing
gtInteractiveView: aView
	<gtView>
	
	
self reparse.

	^ aView explicit 
		title: 'interactive';
		stencil: [ self gameElement2 ]