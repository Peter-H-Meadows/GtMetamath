accessing
canMapTo: thing



"if complete tell owner"
thing mappedTo: self .

""

"self announcer announce: #complete ." "(MmxAnn new )."

canMap := body canMapTo: thing body . 
isComplete := canMap .
canMap ifTrue: [

	"if my owner is complete.. "
	
	self halt .
	
	owner isComplete ifTrue: [ "self halt" . "isComplete := true" ].

	
	"isComplete := thing isComplete .

	thing isEhypoth  ifTrue: [ isComplete := true ]."

"assertion without ehypoths could also make complete"

].

"isComplete ifTrue: [ 
	
	owner hypothIsComplete: self .
] ."

^ canMap

