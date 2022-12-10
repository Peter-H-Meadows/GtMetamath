printing
canMapTo: x  
"self halt ."

fixed ifTrue: [ 
	x isFixed ifTrue: [ ^ x name = name ].
	
	x isFreeVar ifTrue: [ x  canMapTo: self ].
	
	^ false
	
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