accessing
clickEvent: anEvent
self error .


	anEvent currentTarget clicked.
	anEvent currentTarget isSelected
		ifTrue: [ gameController wantedResultClicked: anEvent currentTarget ].

	anEvent consumed: true