parsing
reparse 

"constsUsed := parser constsUsed copy ."

""

parser := MmBodyParser new  "varNames: varNames" .

"parser := MmParenParser new ."

essentialHypoths "second asArray" do: [ :ea | ea parsee: parser. ea owner: self. ].

"self halt ."

body := parser  parse: bodyString1 .


body class = PP2Failure ifTrue: [ self error ].

body owner: self .

varObs := parser varDict .
