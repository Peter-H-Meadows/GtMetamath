accessing
vcopy
	| copier new |
	"self halt."
	body ifNil: [ self parse].
	
	Transcript cr; cr; show: 'Copying: ' ; show: self ; cr ; show: essentialHypoths ; cr .
	
	copier := DeepCopier new initialize: 4096 "self initialDeepCopierSize".
	new := self vDeepCopyWith: copier.
	
	
	Transcript cr; show: 'new: ' ; show: new ; cr ; show: new essentialHypoths ; cr .
	
	
	"copier references associationsDo: [:assoc | 
		assoc value veryDeepFixupWith: copier].
	copier fixDependents."
	^ new