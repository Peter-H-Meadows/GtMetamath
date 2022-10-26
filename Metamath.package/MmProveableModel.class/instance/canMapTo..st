testing
canMapTo: stuff

"stuff isVar ifTrue: [  
	self error .
	^ stuff canMapTo: self .
] ."

"self halt."

stuff isProvable ifFalse: [ self announcer announce: ( MmFailedToMapAnnouncement new reason: 'no match provable' ) . ^ false ] .

"body size = stuff body size ifFalse: [ ^ false ] .
body with: stuff body do: [ :eame :eastuff | ( eame canMapTo: eastuff ) ifFalse: [ ^ false ] ] ."


^ body canMapTo: stuff body .

