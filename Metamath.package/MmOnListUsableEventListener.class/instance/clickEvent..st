accessing
clickEvent: anEvent
	anEvent currentTarget clicked.
	"anEvent currentTarget isSelected
		ifTrue: [ gameController usableClickedFromList: anEvent currentTarget.
			anEvent currentTarget unhighlightAsSelected ]."
		

