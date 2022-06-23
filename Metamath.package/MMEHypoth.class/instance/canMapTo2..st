accessing
canMapTo2: thing

body size = thing body size ifFalse: [ ^ false ] .

body with: thing body do: [ :eame :eastuff | ( eame canMapTo: eastuff ) ifFalse: [ ^ false ] ] .

^ true .

