accessing
bvDeepCopyWith: copier
	(body respondsTo: #do:) ifTrue: [
	body := body collect: [ :ea | ea vDeepCopyWith: copier ] ] ifFalse: [ ] .

	announcer := Announcer new