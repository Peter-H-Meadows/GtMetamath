accessing
color 

"fixed ifFalse: [^ Color random]."

"ab := Dictionary newFromPairs: {
'x' . Color tan .
'y' . Color yellow .
'ph' . Color red . 
'ps' . Color green . 
'ch' . Color cyan . 
'th' . Color blue 
} .

^ ab at: name ifAbsent: Color random"

^ color ifNil: [ color := Color random  ]