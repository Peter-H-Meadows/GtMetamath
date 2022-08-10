generated
scan1
	[ self step.
	currentCharacter == $$
		ifTrue: [ [ self step.
			currentCharacter == $$ ] whileTrue.
			currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(4) ].
			^ self scan1 ].
	true ] whileTrue