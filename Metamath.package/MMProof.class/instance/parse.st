accessing
parse

body  := parser  parse: rawString .


body class = PP2Failure ifTrue: [ ^ self ].

assertionsUsed := body assertionsUsed.

varsUsed := parser class varsUsed copy .