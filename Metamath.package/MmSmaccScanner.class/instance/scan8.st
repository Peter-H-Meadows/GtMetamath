generated
scan8
	[ self step.
	currentCharacter == $$
		ifTrue: [ [ self step.
			currentCharacter == $$ ] whileTrue.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(8) ].
			^ self scan8 ].
	true ] whileTrue