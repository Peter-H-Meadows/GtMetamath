accessing
pp

bodyString1 ifNil: [bodyString1 := '|- ph'].
	
body  := MmPP2Parser new   parse: bodyString1 .
