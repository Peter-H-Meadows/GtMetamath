accessing
clickEvent: ev
| uel hy ax1 |
	
	
"	MmPrevs := ev currentTarget model owner prevAssertions collect: #reparse ."
	self halt.
	
	hy := ev currentTarget model owner vcopy essentialHypoths second .
	
	"prev := ev currentTarget model owner prevAssertions"
	ax1 := ( MmPrevs at: 'ax-1' ) reparse setAllVariablesToFixed.
	hy canMapTo: ax1.
	
	uel :=  ax1 gameElementWithEhypoths.
			
		ev currentTarget addChild: uel.
	
	"(ev currentTarget model returnMappableFrom: MmPrevs)"{} do: [ :ea | 
	
		"ea inspect."
		"if has ehypoths, try to make them with startingProofEhyps"
	
		uel :=  ea gameElementWithEhypoths.
			
		ev currentTarget addChild: uel.
		"ev currentTarget model returnMappableFrom:"
	].
	
	ev consumed: true.