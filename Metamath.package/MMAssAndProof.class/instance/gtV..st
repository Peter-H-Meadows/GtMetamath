accessing
gtV: aView
	<gtView>
	self reparse.

"varsUsed := parser class varsUsed" .
	
	^ aView explicit 
		title: 'interactive';
		stencil: [ self gameElement2 ]