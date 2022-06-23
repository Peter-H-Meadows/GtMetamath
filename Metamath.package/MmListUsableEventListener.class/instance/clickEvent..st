mouse handlers
clickEvent: anEvent

"this is always assertion from usable list. so make new element."

"| cp |
cp := anEvent currentTarget model copy gameElement ."

gameController usableBasicAssertionFromListClicked: anEvent currentTarget model .
