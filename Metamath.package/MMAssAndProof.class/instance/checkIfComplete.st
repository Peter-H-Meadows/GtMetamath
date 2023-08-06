accessing
checkIfComplete

	"self halt."
	essentialHypoths do: [ :ea | ea isComplete ifFalse: [ ^ false ] ].

	
	isComplete := true.
	
	self announcer announce: #complete.


	usedFor
		ifNotNil: [ usedFor setAsComplete.
			usedFor owner isComplete ].
			
			
	"wantedResult body = body ifTrue: [
		self announcer announce: #allDone ]".
	
	^ true