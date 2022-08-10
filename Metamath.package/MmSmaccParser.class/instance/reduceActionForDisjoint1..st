generated-reduction actions
reduceActionForDisjoint1: nodes
	| result |
	result := MmxxDisjointNode new.
	result value: (nodes at: 1).
	^ result