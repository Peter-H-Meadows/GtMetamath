deprecated
makeElements

"
aEventListener := MmOnBoardUsingEventListener new gameController: controller  ."

| myElement mand elements |

self error .


myElement := self gameElement "addEventHandler: aEventListener" .

elements := OrderedCollection with: myElement .
	
self mands reverse do: [ :ea | 
	
		mand := ea gameElement "addEventHandler: aEventListener" .
		elements add: mand .
		myElement graph connectTo: mand.

 ] .	


^ elements 
