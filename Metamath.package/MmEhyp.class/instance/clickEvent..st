accessing
clickEvent: ev
| uel |
	
	
"	MmPrevs := ev currentTarget model owner prevAssertions collect: #reparse ."
	self halt.
	(ev currentTarget model returnMappableFrom: MmPrevs) do: [ :ea | 
	
		"ea inspect."
		"if has ehypoths, try to make them with startingProofEhyps"
	
		uel :=  ea gameElementWithEhypoths.
			
		ev currentTarget addChild: uel.
		"ev currentTarget model returnMappableFrom:"
	].