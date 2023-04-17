accessing
mmgrr
<gtExample>

| a bb db |

db := self metamathUniverse .
a := db assertions first reparse .
bb := a vcopy .

"
self assert: ( bb essentialHypoths first canMapTo: a ) equals: true."


self assert: ( a canMapTo:  bb essentialHypoths first  ) equals: true.


	
^ a vcopy