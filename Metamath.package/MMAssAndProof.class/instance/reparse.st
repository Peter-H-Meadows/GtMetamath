parsing
reparse 

"constsUsed := parser constsUsed copy ."

"self halt ."

parser := MmBodyParser new  "varNames: varNames" .

essentialHypoths "second asArray" do: [ :ea | ea parsee: parser. ea owner: self. ].

body := parser  parse: bodyString1 .


body class = PP2Failure ifTrue: [ self error ].

body owner: self .

varObs := parser varDict .
