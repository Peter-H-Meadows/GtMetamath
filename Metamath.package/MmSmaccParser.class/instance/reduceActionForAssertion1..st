generated-reduction actions
reduceActionForAssertion1: nodes
	| result |
	result := MmxxAssertionNode new.
	result value: (nodes at: 1).
	^ result