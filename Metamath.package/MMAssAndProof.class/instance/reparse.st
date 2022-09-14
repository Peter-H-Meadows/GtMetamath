parsing
reparse 

"essentialHypoths := essentialHypoths collect: [ :ea | | ee |
	ee := ea copy .
	
	ee parser: parser .
	ee parse . 
].

varsUsed := parser varsUsed copy .
varObs := parser varDict copy .
constsUsed := parser constsUsed copy ."

parser := MmBodyParser new  "varNames: varNames" .

essentialHypoths do: [ :ea | ea parsee. ea owner: self. ].

body  := parser  parse: bodyString1 .


body class = PP2Failure ifTrue: [ self halt ].