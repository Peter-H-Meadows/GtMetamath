generated
scanForTokenX1
	[ self step.
	currentCharacter == $$
		ifTrue: [ self step.
			currentCharacter == $a ifTrue: [ ^ self scan5 ].
			currentCharacter == $e ifTrue: [ ^ self scan6 ].
			currentCharacter == $f ifTrue: [ ^ self scan7 ].
			currentCharacter == $p ifTrue: [ ^ self scan8 ].
			^ self reportLastMatch ].
	currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
		whileTrue.
	^ self reportLastMatch