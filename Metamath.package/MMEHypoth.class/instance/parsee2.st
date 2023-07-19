accessing
parsee2
	
	body := MmPP2ParserFirst2 bp parse: rawString .
	body class = PP2Failure ifTrue: [ self halt ].