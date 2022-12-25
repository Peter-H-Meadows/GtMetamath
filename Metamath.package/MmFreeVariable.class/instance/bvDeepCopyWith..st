accessing
bvDeepCopyWith: copier
	mappedTo ifNotNil: [
		mappedTo := mappedTo vDeepCopyWith: copier.
	]