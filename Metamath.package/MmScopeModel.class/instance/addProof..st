accessing
addProof: aMMProof 
	aMMProof essentialHypoths: ehypoths.
	
	"allProofs at: aMMProof name put: aMMProof ."
	assertionsDict at: aMMProof name put: aMMProof .
	
	proofs add: aMMProof
	