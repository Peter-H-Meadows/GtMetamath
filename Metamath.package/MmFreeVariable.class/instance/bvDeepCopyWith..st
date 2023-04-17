accessing
bvDeepCopyWith: copier

	announcer := Announcer new.

	mappedTo ifNotNil: [
		mappedTo := mappedTo vDeepCopyWith: copier.
	].
	
	owners := owners collect: [:xx | xx vDeepCopyWith: copier. ]