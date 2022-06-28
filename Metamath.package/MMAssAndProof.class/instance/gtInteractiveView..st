accessing
gtInteractiveView: aView
	<gtView>

"varsUsed := parser class varsUsed" "copy" .
	
	^ aView explicit 
		title: 'interactive';
		stencil: [ self gameElement2 ]