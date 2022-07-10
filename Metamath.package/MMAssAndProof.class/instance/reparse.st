parsing
reparse 

parser := MmPP2Parser new  varNames: varNames .

essentialHypoths := essentialHypoths collect: [ :ea | | ee |
	ee := ea copy .
	ee owner: self.
	ee parser: parser .
	ee parse . 
].

body  := parser  parse: bodyString1 .

varsUsed := parser varsUsed copy .
varObs := parser varDict copy .
constsUsed := parser constsUsed copy .


body class = PP2Failure ifTrue: [ self halt]