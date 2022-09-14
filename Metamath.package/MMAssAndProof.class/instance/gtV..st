accessing
gtV: aView
	
"self reparse."

"varsUsed := parser class varsUsed" .
	
	^ aView explicit 
		title: 'interactive';
		stencil: [ self gameElement2 ]