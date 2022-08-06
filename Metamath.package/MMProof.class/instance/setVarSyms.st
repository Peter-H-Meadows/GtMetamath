accessing
setVarSyms

	self error.
	
	vars := (body collect: [ :ea | ea getVarSyms ]) flattened.
	vars := vars asSet.
	essentialHypoths do: [ :ea | vars addAll: ea vars ].
	vars := vars asSet