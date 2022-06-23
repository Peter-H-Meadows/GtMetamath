accessing
canMapTo: stuff  

stuff isFixedVar ifTrue: [ ^ true ].

stuff isVar ifTrue: [^ stuff canMapTo: self ].

^ false