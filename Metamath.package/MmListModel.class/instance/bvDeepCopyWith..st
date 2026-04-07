accessing
bvDeepCopyWith: copier
	(body respondsTo: #do:) ifTrue: [
	body := body collect: [ :ea | ea vDeepCopyWith: copier ] ] ifFalse: [ self halt: 'this should always be a collection' ] .

	announcer := Announcer new