accessing
vDeepCopyWith: copier

| copyOfSelf dd |
	copier references at: self ifPresent: [ :newer | 
		"already copied" 
		^ newer
	].
	
	copyOfSelf := self shallowCopy.
	
	copier references at: self put: copyOfSelf.
	"remember"
	
	copyOfSelf bvDeepCopyWith: copier.
	
	
	
	^ copyOfSelf
	
	"body := body vDeepCopyWith: copier.
	essentialHypoths := essentialHypoths collect: [:ea | ea vDeepCopyWith: copier]"