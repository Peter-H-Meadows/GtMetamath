accessing
canMapTo: thing

"body size = thing body size ifFalse: [ ^ false ] .
body with: thing body do: [ :eame :eastuff | ( eame canMapTo: eastuff ) ifFalse: [ ^ false ] ] .
self announcer announce: MmCanMapAnnouncement new ."

^ body canMapTo: thing body
