accessing
variables
"body ifNil: [

^ { first variables. second variables }] ifNotNil: ["

^ { body variables } flattened "asSet" ".]"