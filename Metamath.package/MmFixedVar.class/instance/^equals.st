accessing
= stuff
"self halt."

stuff isFixedVar ifTrue: [^ true ].

stuff isFreeVar ifTrue: [^ true ].

stuff isMappedVar ifTrue: [^ self = stuff mappedTo ].

^ false
