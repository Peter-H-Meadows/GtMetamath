accessing
bvDeepCopyWith: copier

	announcer := Announcer new.
	
	self newLook .
	
"geo := 
		(BlTriangleGeometry new perform: 
		#(beTop beBottom beLeft beRight) atRandom)."

	"mappedTo ifNotNil: [
		mappedTo := mappedTo vDeepCopyWith: copier.
	].
	
	owners := owners collect: [:xx | xx vDeepCopyWith: copier. ]"