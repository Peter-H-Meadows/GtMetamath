accessing
vDeepWith: copier
mappedTo ifNotNil: [
mappedTo := mappedTo vDeepCopyWith: copier.
].