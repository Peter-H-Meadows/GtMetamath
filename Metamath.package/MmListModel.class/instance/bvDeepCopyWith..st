accessing
bvDeepCopyWith: copier
	
	body := body collect: [ :ea | ea vDeepCopyWith: copier ].

	announcer := Announcer new