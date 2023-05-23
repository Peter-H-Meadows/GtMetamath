accessing
assertionsUsed
	assertionsUsed := used substrings collect: [ :ea | prevAssertions at: ea ifAbsent: [ 
	prevAssertions at: 'mp2' ]].
	^ assertionsUsed "reject: [:ea | ea isWFFAssertion]"