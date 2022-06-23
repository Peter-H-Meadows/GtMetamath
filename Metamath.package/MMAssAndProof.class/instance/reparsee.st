parsing
reparsee
"
MmPP2ParserBody2 varNames: varNames ."
parser := MmPP2Parser new .

essentialHypoths := essentialHypoths collect: [ :ea | 
	ea parser: parser .
	ea parse . 
].


"body class = PP2Failure ifTrue: [self halt]"