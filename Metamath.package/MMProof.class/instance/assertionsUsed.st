accessing
assertionsUsed
	assertionsUsed := used substrings collect: [ :ea | (prevAssertions at: ea) copy ].
	^ assertionsUsed reject: [:ea | ea isWFFAssertion]