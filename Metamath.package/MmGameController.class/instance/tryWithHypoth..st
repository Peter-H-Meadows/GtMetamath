accessing
tryWithHypoth: el

self error .



"currentlySelected ifNil: [ ^ self ] ."

using := el .
"ann currentTarget model clean ."

selectedWantedElement ifNotNil: [  
	
	selectedWantedElement graph connectTo: using .
	using model canMapTo: selectedWantedElement model.
	mondrian layout horizontalTree .
].

using highlightAsSelected .

" currentlySelectedHypothElement  graph connectTo: using ."

"self announcer announce: (MmTryHypothToCurrent new model: using  ) ."

	"( using model canMapTo: currentlySelectedHypothElement model ) ifTrue: [ ] ifFalse: [ ] ."



