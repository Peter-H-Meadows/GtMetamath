accessing
canMapTo: thing

thing mappedTo: self .

"self announcer announce: #complete ."

canMap := body canMapTo: thing body . 
isComplete := canMap .
canMap ifTrue: [

	"if my owner is complete.. "
	
	"self halt ."
	
	thing isComplete ifTrue: [ self announcer announce: #maps . ].
	
	
	
	owner isComplete ifTrue: [ "self halt" . "isComplete := true" ].

	
	"isComplete := thing isComplete .

	thing isEhypoth  ifTrue: [ isComplete := true ]."

"assertion without ehypoths could also make complete"

] ifFalse: [

	self announcer announce: #fail .
] .

"isComplete ifTrue: [ 
	
	owner hypothIsComplete: self .
] ."

^ canMap

