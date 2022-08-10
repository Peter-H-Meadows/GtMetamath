generated-reduction actions
reduceActionForProof1: nodes
	| result |
	result := MmxxProofNode new.
	result value: (nodes at: 1).
	^ result