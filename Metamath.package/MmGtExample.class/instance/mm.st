accessing
mm
<gtExample>

| ax1 db axmp a1i maps maj aa |

db := self metamathUniverse .
ax1 := db assertions second vcopy.
self assert: ax1 name equals: 'ax-1' .
self assert: ax1 essentialHypoths size equals: 0 .

a1i := db proofs first vcopy .

self assert: a1i name equals: 'a1i' .
self assert: a1i essentialHypoths size equals: 1 .
self assert: a1i essentialHypoths first name equals: 'a1i.1' .

a1i setAllVariablesToFixed .

self assert: a1i prevAssertions size equals: 2 .

maps :=  a1i returnMappableFrom: (a1i prevAssertions  collect: #vcopy ).

self assert: maps size equals: 1 .

maj :=  maps asArray first vcopy essentialHypoths second .

aa := ( a1i prevAssertions  collect: #vcopy )  asArray first .

self assert: ( maj canMapTo: aa ) equals: true .

maj :=  maps asArray first vcopy essentialHypoths second .

aa := ( a1i prevAssertions  collect: #vcopy )  asArray second .

self assert: ( maj canMapTo: aa ) equals: true .

	". maps asArray first veryDeepCopy }" 
	"returnMappableFrom: (a1i prevAssertions  collect: #reparse )."
	
^ maj