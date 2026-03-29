accessing
bvDeepCopyWith: copier
	(body class respondsTo: #do:) ifTrue: [
	body := body collect: [ :ea | ea vDeepCopyWith: copier ] ] ifFalse: [ ] .

	announcer := Announcer new