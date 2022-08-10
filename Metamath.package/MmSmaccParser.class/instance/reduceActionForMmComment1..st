generated-reduction actions
reduceActionForMmComment1: nodes
	| result |
	result := MmxxMmCommentNode new.
	result value: (nodes at: 1).
	^ result