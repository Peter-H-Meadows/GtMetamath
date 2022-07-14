accessing
clicked
	selected := selected not.

	selected
		ifTrue: [ self highlightAsSelected.
			"self announcer announce: #usableSelected: ."
			
			self announcer announce: (MmUseableSelectedAnnouncement new element: self).
		]
		ifFalse: [ self unhighlightAsSelected ]