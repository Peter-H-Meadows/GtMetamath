accessing
canMapTo: thing

	canMap := body canMapTo: thing body .

	"isComplete := canMap ."

canMap ifTrue: [

	thing usedFor: self .
	
	usedBy := thing .

	
	"self halt."
	
	thing isComplete ifTrue: [ 
	
		self announcer announce: #maps . 
	
		isComplete := thing isComplete "true" .
	
		owner checkIfComplete .
		"if my owner is complete.. "
	
	] .
	
	
	"thing isEhypoth  ifTrue: [ isComplete := true ]."

	"assertion without ehypoths could also make complete"

] ifFalse: [

	self announcer announce: #fail .
] .

"isComplete ifTrue: [ 
	
	owner hypothIsComplete: self .
] ."

^ canMap