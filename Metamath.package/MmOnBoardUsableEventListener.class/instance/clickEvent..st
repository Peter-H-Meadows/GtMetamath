mouse handlers
clickEvent: anEvent
anEvent currentTarget clicked.
	anEvent currentTarget isSelected
		ifTrue: [

gameController usableClickedFromBoard: anEvent currentTarget. ]

"anEvent currentTarget clicked .
anEvent currentTarget isSelected ifTrue: [  gameController usableClickedFromBoard: anEvent currentTarget ]"