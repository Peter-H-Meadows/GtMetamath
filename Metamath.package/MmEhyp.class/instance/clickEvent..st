accessing
clickEvent: ev
| uel hy |
	
	
"	MmPrevs := ev currentTarget model owner prevAssertions collect: #reparse ."
	self halt.
	
	hy := ev currentTarget model owner vcopy essentialHypoths second .
	
	"prev := ev currentTarget model owner prevAssertions"
	
	hy canMapTo: ( MmPrevs at: 'ax-1' ).
	
	uel :=  ( MmPrevs at: 'ax-1' ) gameElementWithEhypoths.
			
		ev currentTarget addChild: uel.
	
	"(ev currentTarget model returnMappableFrom: MmPrevs)"{} do: [ :ea | 
	
		"ea inspect."
		"if has ehypoths, try to make them with startingProofEhyps"
	
		uel :=  ea gameElementWithEhypoths.
			
		ev currentTarget addChild: uel.
		"ev currentTarget model returnMappableFrom:"
	].
	
	ev consumed: true.