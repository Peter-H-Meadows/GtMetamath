accessing
vcopy
	| copier new |
	"self halt."
	body ifNil: [ self halt].
	copier := DeepCopier new initialize: 4096 "self initialDeepCopierSize".
	
	new := self shallowCopy.
	
	copier references at: self put: new.
	"remember"
	
	new bvDeepCopyWith: copier.
	
	
	"copier references associationsDo: [:assoc | 
		assoc value veryDeepFixupWith: copier].
	copier fixDependents."
	^ new