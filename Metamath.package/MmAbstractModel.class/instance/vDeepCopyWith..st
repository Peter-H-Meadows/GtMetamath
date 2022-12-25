accessing
vDeepCopyWith: copier

| copyOfSelf |
	copier references at: self ifPresent: [ :newer | 
		"already copied" 
		^ newer
	].
	
	copyOfSelf := self shallowCopy.
	
	copier references at: self put: copyOfSelf.
	"remember"
	
	copyOfSelf bvDeepCopyWith: copier.
	
	^ copyOfSelf