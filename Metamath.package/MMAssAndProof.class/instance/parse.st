parsing
parse
self error.
body  := parser  parse: rawString .
varsUsed := parser class varsUsed "copy" .

body class = PP2Failure ifTrue: [self halt]