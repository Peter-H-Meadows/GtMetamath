generated-reduction actions
reduceActionForConstant1: nodes
	| result |
	result := MmxxConstantNode new.
	result value: (nodes at: 1).
	^ result