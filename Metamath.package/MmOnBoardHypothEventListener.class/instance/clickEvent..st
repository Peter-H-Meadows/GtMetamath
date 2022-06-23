mouse handlers
clickEvent: anEvent
	"gameController onBoardeHypothClicked: anEvent currentTarget."

	anEvent currentTarget clicked.
	anEvent currentTarget isSelected
		ifTrue: [ gameController onBoardeHypothClicked: anEvent currentTarget ]