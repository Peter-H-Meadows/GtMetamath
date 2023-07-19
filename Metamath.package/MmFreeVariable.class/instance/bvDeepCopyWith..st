accessing
bvDeepCopyWith: copier

	announcer := Announcer new.
	
	letter := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' atRandom .
	
	Transcript show: 'new var '; show: self ; cr .
	
	color := Color random.

	"mappedTo ifNotNil: [
		mappedTo := mappedTo vDeepCopyWith: copier.
	].
	
	owners := owners collect: [:xx | xx vDeepCopyWith: copier. ]"