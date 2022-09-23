names
localVariableNames
	self error.
	^ (self localVariables collect: #name) asSet .