accessing
pp

bodyString1 ifNil: [bodyString1 := '|- ph'].
	
body  := MmBodyParser new   parse: bodyString1 .
