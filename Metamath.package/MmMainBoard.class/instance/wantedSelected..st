accessing
wantedSelected: ann
	selectedWantedElement  ifNotNil: [ selectedWantedElement unhighlightAsSelected ] .
	
	selectedWantedElement := ann element .

	selectedUsableElement ifNotNil: [ self pairSelected]
