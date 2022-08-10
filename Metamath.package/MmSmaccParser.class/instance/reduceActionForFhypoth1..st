generated-reduction actions
reduceActionForFhypoth1: nodes
	| result |
	result := MmxxFhypothNode new.
	result value: (nodes at: 1).
	^ result