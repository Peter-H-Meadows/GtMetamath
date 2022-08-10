generated-reduction actions
reduceActionForScope1: nodes
	| result |
	result := MmxxScopeNode new.
	result addNodes: (nodes at: 2) to: result values.
	^ result