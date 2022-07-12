accessing
gtInteractiveView: aView
	<gtView>
	
	
self reparse.

	^ aView explicit 
		title: 'interactive';
		stencil: [ MmMainBoard new  openOn: self "self gameElement2" ]