emulating
clicked
	selected := selected not. "self halt."
	selected
		ifTrue: [ self highlightAsSelected	
			"self announcer announce: #usableSelected: ." ]
		ifFalse: [ self unhighlightAsSelected ]