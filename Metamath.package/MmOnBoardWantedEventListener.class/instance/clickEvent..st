mouse handlers
clickEvent: anEvent

anEvent currentTarget clicked .
anEvent currentTarget isSelected ifTrue: [
gameController wantedClicked: anEvent currentTarget .].

anEvent consumed: true.

"gameController setCurrentlySelected: anEvent  ."

"| el |
el := anEvent currentTarget .

gameController unSelectWanted .

el toggleSelected ifTrue: [ gameController wantedClicked: el ]"



"anEvent currentTarget clickEvent: anEvent ."
