accessing
vcopy
	| copier new |
	"self halt."
	body ifNil: [ self parse].
	copier := DeepCopier new initialize: 4096 "self initialDeepCopierSize".
	new := self vDeepCopyWith: copier.
	
	"copier references associationsDo: [:assoc | 
		assoc value veryDeepFixupWith: copier].
	copier fixDependents."
	^ new