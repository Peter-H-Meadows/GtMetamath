generated-reduction actions
reduceActionForVar1: nodes
	| result |
	result := MmxxVarNode new.
	result value: (nodes at: 1).
	^ result