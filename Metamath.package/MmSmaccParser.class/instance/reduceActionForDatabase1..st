generated-reduction actions
reduceActionForDatabase1: nodes
	| result |
	result := MmxxDatabaseNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result