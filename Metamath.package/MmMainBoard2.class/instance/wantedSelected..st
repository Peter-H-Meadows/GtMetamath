accessing
wantedSelected: ann

"self halt ."
	selectedWantedElement  ifNotNil: [ selectedWantedElement unhighlightAsSelected ] .
	
	selectedWantedElement := ann element .

	selectedUsableElement ifNotNil: [ self pairSelected]
