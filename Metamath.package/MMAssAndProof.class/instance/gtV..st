accessing
gtV: aView
	<gtView>
	
	"self reparse." "if already parsed, should use 'copy' here"

	"varsUsed := parser class varsUsed" .

	"self halt."
	
	body := MmPP2ParserFirst2 bp parse: bodyString1 .
	
	essentialHypoths  do: [ :ea | ea parsee2 ].
	
	^ aView explicit 
		title: 'interactive';
		stencil: [ self "vcopy" openOnMainBoard "gameElement" "gameElementWithEhypoths" ]