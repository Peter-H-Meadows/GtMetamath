accessing
gtV: aView
	<gtView>
	
	self reparse. "if already parsed, should use 'copy' here"

"varsUsed := parser class varsUsed" .
	
	^ aView explicit 
		title: 'interactive';
		stencil: [ self openOnMainBoard ]