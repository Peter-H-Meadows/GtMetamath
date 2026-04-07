accessing
parsee2
	
	"body := MmPP2ParserFirst2 bp parse: rawString ."
	
	
	body := MmBodyParser  parse: bodyString1.
	
	body class = PP2Failure ifTrue: [ self halt ].