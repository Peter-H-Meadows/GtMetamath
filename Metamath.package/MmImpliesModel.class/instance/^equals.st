accessing
= stuff
"self halt."
	stuff isMappedVar
		ifTrue: [ "self halt."
			^ self = stuff mappedTo ].

	stuff class = self class
		ifTrue: [ ^ first = stuff first and: [ second = stuff second ] ].
		
	^ false
		