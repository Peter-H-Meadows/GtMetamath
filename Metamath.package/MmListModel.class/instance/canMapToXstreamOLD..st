testing
canMapToXstreamOLD: stuff

| targetStream myst my aList |

stuff isList ifFalse: [ self error ] .

"body size > 1 ifTrue: [
	
	stuff body size = 1 ifTrue: [ self halt . ^ stuff canMapTo: self ]
	
].

body size = 1 ifTrue: [

body first isParens ifFalse: [
	stuff body size = 1 ifTrue: [ self halt . ^ true ]]
	
]."

targetStream := ReadStream on: stuff expandMappedVars flattened  .

myst := ReadStream on: body .

[ myst atEnd ] whileFalse: [
	
	my := myst next .
	
	my isVar ifTrue: [

		aList := myst atEnd ifTrue: [ 
			MmListModel new body: targetStream upToEnd .
			
		] ifFalse: [
		
			myst peek isConst ifTrue: [
				MmListModel new body: (targetStream upTo: myst next) .
			] ifFalse: [ self halt. targetStream next ].			
					
		].
	
		(my canMapTo: aList) ifFalse: [ ^ false ] .

	] ifFalse: [ 

		targetStream atEnd ifTrue: [ ^ false ] .
		(my canMapTo: (targetStream next)) ifFalse: [ ^ false ] .	
		
	].
	
	
] .

^ true