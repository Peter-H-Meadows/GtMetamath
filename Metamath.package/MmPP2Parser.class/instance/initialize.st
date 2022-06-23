initialization
initialize 

	super initialize .
	AllAssertions := Dictionary new.
	AllProofs := OrderedCollection new.
	"Db := MmDatabase new ."
	
	VarNames := Set new .
	ConstsUsed := Set new .
	VarDict := Dictionary new .
	
	VarsUsed := Set new .
	