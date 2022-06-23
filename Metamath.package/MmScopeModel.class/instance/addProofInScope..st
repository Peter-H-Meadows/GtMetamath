accessing
addProofInScope: aMMProof 
aMMProof essentialHypoths: ehypoths.
	proofs add: aMMProof .
	stuff add: aMMProof.
	
	"ProofDict at: aMMProof name put: aMMProof ."
	assertionsDict at: aMMProof name put: aMMProof .
	