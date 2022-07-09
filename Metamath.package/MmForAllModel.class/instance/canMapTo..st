accessing
canMapTo: stuff
	stuff isVar ifTrue: [ ^ stuff canMapTo: self ].

	stuff class = self class ifFalse: [ ^ false ].
	^ (first canMapTo: stuff first)
		and: [  "^ body canMapTo: stuff body ."
			second canMapTo: stuff second ]