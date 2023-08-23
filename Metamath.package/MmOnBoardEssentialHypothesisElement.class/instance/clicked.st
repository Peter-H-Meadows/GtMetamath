accessing
clicked
	selected := selected not.
	
	selected
		ifTrue: [ self highlightAsSelected ]
		ifFalse: [ self unhighlightAsSelected ]