printing
canMapTo: x  
"self halt ."

fixed ifTrue: [ 

	x isVar ifFalse: [ ^ false ].

	x isFixed ifTrue: [ ^ x name = name ].
	
	x isFreeVar ifTrue: [ x  canMapTo: self ].
	
	"self halt ."
	
	"^ x  canMapTo: self "
	
	^ self canMapTo: x mappedTo
	
	].
	
	Count ifNil: [Count := 0].
	Count > 99 ifTrue: [
		Count := 0.
		self halt .
	].

mappedTo ifNotNil: [ "self halt." ^ mappedTo canMapTo: x ].

self announcer announce: (MmVariableMappedAnnouncement new mappedTo: x).

mappedTo := x .

"self becomeForward: (MmMappedVariableModel new name: name mappedTo: x )."

	Transcript next
		color: Color pink;
		fontSize: 16;
		putAll: 'mapping: ' ; tab;
		putAll: self ; cr;
		putAll: 'to: ' ; tab;
		putAll: x ;
		tab;
		cr.

^ true