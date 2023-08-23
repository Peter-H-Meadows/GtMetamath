accessing
doubleMP
<gtExample>

| db axmpc1 mp2 axmpc2 axmpc3 |

db := self metamathUniverse .
axmpc1 := db assertions second  vcopy .
self assert: axmpc1 name equals: 'ax-mp' .

"axmpc2 := axmpc1 vcopy .


axmpc3 := axmpc1 vcopy ."

mp2 := db proofs last vcopy  "setAllVariablesToFixed" .

mp2 variables do: #setAsFixed .

self assert: mp2 name equals: 'mp2' .

self assert: 

	( axmpc1 essentialHypoths first canMapTo: mp2 essentialHypoths third )
 
 equals: true .

"axmpc1 essentialHypoths second canMapTo: mp2 essentialHypoths third .
axmpc2 essentialHypoths second canMapTo: axmpc1 .
axmpc3 essentialHypoths first canMapTo: mp2 essentialHypoths third .
^ mp2"

self assert: 

	( axmpc1 essentialHypoths first canMapTo: mp2 essentialHypoths first )
 
 equals: false .

^ mp2