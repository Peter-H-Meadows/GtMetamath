accessing
vDeepCopyWith: copier

| copyOfSelf |
	copier references at: self ifPresent: [ :newer | 
		"already copied" 
		"Transcript show: 'same list' ; cr ."
		^ newer
	].
	
	copyOfSelf := self shallowCopy.
	
	Transcript show: 'making new, ' ; show: copyOfSelf class ; cr ; show:  copyOfSelf ; cr .
	
	copier references at: self put: copyOfSelf.
	"remember"
	
	copyOfSelf bvDeepCopyWith: copier.
	
	^ copyOfSelf