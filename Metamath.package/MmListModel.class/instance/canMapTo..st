accessing
canMapTo: stuff

stuff isVar ifTrue: [  
	
	^ stuff canMapTo: self .
] .

stuff "isParens" isList ifFalse: [ 
	self announcer announce: 
	( MmFailedToMapAnnouncement new reason: 'no match paren/list' ) .
	^ false .
] .

(body size = stuff body size) ifFalse: [ 
	self announcer announce: 
	( MmFailedToMapAnnouncement new reason: 'no match paren/list/SIZE' ) .
	^ false .
] .

body with: stuff body do: [:b1 :b2 |

	self halt.
	
	(b1 canMapTo: b2) ifFalse: [ 
	
		self announcer announce: 
		( MmFailedToMapAnnouncement new reason: 'no match' ) .
	
		^ false .
	] .
 ] .
 
 ^ true

"^ body canMapTo: stuff body ."