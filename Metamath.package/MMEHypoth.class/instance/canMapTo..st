accessing
canMapTo: thing

thing usedFor: self .

canMap := body canMapTo: thing body .

"isComplete := canMap ."

canMap ifTrue: [

	"if my owner is complete.. "
	
	self halt .
	
	thing isComplete ifTrue: [ self announcer announce: #maps . ].
	
	isComplete := thing isComplete .
	
	owner isComplete .
	
	"ifTrue: [  ]."

	
	"thing isEhypoth  ifTrue: [ isComplete := true ]."

"assertion without ehypoths could also make complete"

] ifFalse: [

	self announcer announce: #fail .
] .

"isComplete ifTrue: [ 
	
	owner hypothIsComplete: self .
] ."

^ canMap
