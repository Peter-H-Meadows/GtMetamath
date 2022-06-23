accessing
hypothIsComplete: h
"if all e? hypoths r complete, tell owner.."


( essentialHypoths inject: true into: [ :sum :ea | ea isComplete & sum ] ) ifTrue: [

	"if we make the result we wanted, announce"
	
	"if we have owner tell them were complete"
	
	"self halt ."
	
	isComplete := true .
	
	mappedTo ifNotNil: [ mappedTo makerIsComplete ]

].
