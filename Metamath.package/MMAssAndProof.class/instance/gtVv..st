as yet unclassified
gtVv: aView
	<gtView>
	
	"self reparse." "if already parsed, should use 'copy' here"

	"varsUsed := parser class varsUsed" 

	"self halt."
	
	body := MmmmParseBody new parse: bodyString1 .
	
	"essentialHypoths  do: [ :ea | ea parsee2 ]."
	
	^ aView explicit 
		title: 'iiii';
		stencil: [ self vcopy gameElement ]