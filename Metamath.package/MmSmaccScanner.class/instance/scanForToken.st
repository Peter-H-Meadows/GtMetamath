generated
scanForToken
	self step.
	currentCharacter == $$
		ifTrue: [ self step.
			currentCharacter == $( ifTrue: [ ^ self scan1 ].
			currentCharacter == $c ifTrue: [ ^ self scan2 ].
			currentCharacter == $d ifTrue: [ ^ self scan3 ].
			currentCharacter == $v ifTrue: [ ^ self scan4 ].
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(1) ].
			currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(2) ].
			^ self reportLastMatch ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(3).
			self step.
			currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
				whileTrue.
			^ self reportLastMatch ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ [ self step.
			(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
				ifTrue: [ ^ self scanForTokenX1 ].
			currentCharacter isAlphaNumeric or: [ currentCharacter between: $- and: $. ] ]
				whileTrue ].
	^ self reportLastMatch