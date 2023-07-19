accessing
vDeepCopyWith: copier

| copyOfSelf |
	copier references at: self ifPresent: [ :newer | 
		"already copied" 
		Transcript show: 'already copied var' ; cr .
		^ newer
	].
	
	copyOfSelf := self shallowCopy.
	
	"copyOfSelf := MmFreeVariable new name: name ."
	
	copier references at: self put: copyOfSelf.
	"remember"
	
	copyOfSelf bvDeepCopyWith: copier.
	
	^ copyOfSelf