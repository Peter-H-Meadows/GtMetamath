parsing
parse

	"body := MmPP2ParserFirst2 bp parse: bodyString1."
	
	body := MmmmParseBody  new parse: bodyString1.
	
	body class = PP2Failure ifTrue: [ self halt: body printString ].
	essentialHypoths do: [ :ea | ea parsee2 ]