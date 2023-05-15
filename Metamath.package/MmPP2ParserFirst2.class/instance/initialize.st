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
	
	Bp := MmBody new .
	
	WffPP := PP2DelegateNode named: 'wff' .
	ClassPP := PP2DelegateNode named: 'class' .
	
	Bp := '|-' asPParser trim , WffPP .

	"VarDict := Dictionary new"