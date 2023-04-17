accessing
gtV: aView
	<gtView>
	
	"self reparse." "if already parsed, should use 'copy' here"

"varsUsed := parser class varsUsed" .

	"self halt."
	
	^ aView explicit 
		title: 'interactive';
		stencil: [ self vcopy openOnMainBoard ]