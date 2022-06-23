accessing
addAssertion: aMMAssertion 
	aMMAssertion essentialHypoths: ehypoths.
	assertions add: aMMAssertion .
	stuff add: aMMAssertion .
	"ProofDict at: aMMAssertion name put: aMMAssertion ."
	assertionsDict at: aMMAssertion name put: aMMAssertion .