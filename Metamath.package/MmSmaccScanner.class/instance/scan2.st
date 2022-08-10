generated
scan2
	[ self step.
	currentCharacter == $$
		ifTrue: [ [ self step.
			currentCharacter == $$ ] whileTrue.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(6) ].
			^ self scan2 ].
	true ] whileTrue