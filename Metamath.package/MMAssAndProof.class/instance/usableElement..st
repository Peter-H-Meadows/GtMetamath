accessing
usableElement: c
"make element for usableThingsList."
| aEventListener el cc |

"cc := MmGameController new setupProof: self ."

self hasEhypoths ifTrue: [ 

	aEventListener := MmUsableEventListener new gameController: c .

	el := self gameElement addEventHandler: aEventListener .

	^ el showEssential .

] .

aEventListener := MmListUsableEventListener new gameController: c .

el := self gameElement addEventHandler: aEventListener .
el addStartingBracket .
^ el  .
