accessing
= stuff
"self halt."

stuff isFixedVar ifTrue: [^ name = stuff name ].

stuff isFreeVar ifTrue: [^ true ].

stuff isMappedVar ifTrue: [^ self = stuff mappedTo ].

^ false
