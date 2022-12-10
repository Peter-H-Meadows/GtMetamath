accessing
vDeepCopyWith: copier

| class copyOfSelf |
	copier references at: self ifPresent: [ :newer | 
		"already copied" 
		^ newer
	].
	
	class := self class.
	class isMeta ifTrue: [ "a metaclass" ^ self ].
	copyOfSelf := self shallowCopy.
	copyOfSelf bvDeepCopyWith: copier.
	copier references at: self put: copyOfSelf.
	"remember"
	
	^ copyOfSelf
	
	"body := body vDeepCopyWith: copier.
	essentialHypoths := essentialHypoths collect: [:ea | ea vDeepCopyWith: copier]"