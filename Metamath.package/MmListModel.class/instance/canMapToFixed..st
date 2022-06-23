testing
canMapToFixed: stuff
"body size < 1 ifTrue: [ self halt . ^ false ]."

body size > 1 ifTrue: [ self halt . ^ false ].

^ body first canMapToFixed: stuff

