generated
scan6
	[ self step.
	currentCharacter == $$
		ifTrue: [ [ self step.
			currentCharacter == $$ ] whileTrue.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(10) ].
			^ self scan6 ].
	true ] whileTrue