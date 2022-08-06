parsing
reparsex 
self error .
parser := MmBodyParser new  varNames: varNames .

body  := parser  parse: bodyString1 .

varsUsed := parser varsUsed copy .
varObs := parser varDict copy .
constsUsed := parser constsUsed copy .

"
body class = PP2Failure ifTrue: [ self halt]"