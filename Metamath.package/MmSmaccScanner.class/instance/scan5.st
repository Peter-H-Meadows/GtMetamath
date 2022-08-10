generated
scan5
	[ self step.
	currentCharacter == $$
		ifTrue: [ [ self step.
			currentCharacter == $$ ] whileTrue.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(9) ].
			^ self scan5 ].
	true ] whileTrue