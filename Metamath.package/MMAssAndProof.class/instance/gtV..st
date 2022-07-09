accessing
gtV: aView
	
self reparse.
"body  := MmPP2Parser new   parse: bodyString1 ."
"self reparsee."


"varsUsed := parser class varsUsed" "copy" .
	
	^ aView explicit 
		title: 'interactive';
		stencil: [ self gameElement2 ]