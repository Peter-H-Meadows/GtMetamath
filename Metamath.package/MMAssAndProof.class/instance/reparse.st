parsing
reparse 

"constsUsed := parser constsUsed copy ."

parser := MmBodyParser new  "varNames: varNames" .

essentialHypoths do: [ :ea | ea parsee. ea owner: self. ].

body := parser  parse: bodyString1 .

body class = PP2Failure ifTrue: [ self error ].

varObs := parser varDict "copy" .
