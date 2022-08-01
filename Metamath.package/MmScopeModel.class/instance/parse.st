parsing
parse 
"| parser |
MmPP2ParserBody2 varNames: varNames .
parser := MmPP2ParserBody2 new .

allRawThings do: [ :ea | 
	ea parser: parser .
	ea parse . 
	ea addInScope: self 
]"