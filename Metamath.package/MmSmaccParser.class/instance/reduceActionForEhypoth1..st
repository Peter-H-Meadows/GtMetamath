generated-reduction actions
reduceActionForEhypoth1: nodes
	| result |
	result := MmxxEhypothNode new.
	result value: (nodes at: 1).
	^ result