initialization
initialize 

	super initialize .
	AllAssertions := OrderedDictionary new.
	
	AllProofs := OrderedDictionary new.
	
	Comments := OrderedCollection new .
	
	Database := "MmDatabase" MmScopeModel new .

	VarNames := Set new .
	
	Place := 0 .
	
	ConstDict := OrderedDictionary new.

	"VarDict := Dictionary new"