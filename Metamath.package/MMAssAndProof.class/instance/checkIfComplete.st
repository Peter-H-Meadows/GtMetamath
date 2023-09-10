accessing
checkIfComplete

	essentialHypoths do: [ :ea | 
		ea isComplete ifFalse: [ ^ false ] 
	].

	isComplete := true.
	
	"self halt."
	
	self announcer announce: #complete.


	usedFor
		ifNotNil: [ usedFor setAsComplete.
			usedFor owner checkIfComplete ].
			
			
	"wantedResult body = body ifTrue: [
		self announcer announce: #allDone ]".
	
	^ true