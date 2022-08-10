generated
scan3
	[ self step.
	currentCharacter == $$
		ifTrue: [ [ self step.
			currentCharacter == $$ ] whileTrue.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(7) ].
			^ self scan3 ].
	currentCharacter <= $- or: [ currentCharacter >= $/ ] ] whileTrue.
	^ self reportLastMatch