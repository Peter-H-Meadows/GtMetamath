example
ax1
<gtExample>

| ax1 db axmp a1i |

db := self metamathUniverse .
ax1 := db assertions third vcopy .
self assert: ax1 name equals: 'ax-1' .
self assert: ax1 essentialHypoths size equals: 0 .

axmp := db assertions first vcopy .
self assert: axmp name equals: 'ax-mp' .
self assert: axmp essentialHypoths size equals: 2 .
self assert: axmp variables size equals: 2 .
self assert: axmp variables asArray first name equals: 'ph' .
self assert: axmp variables asArray second name equals: 'ps' .
"self assert: ( ax1 canMapTo: axmp) equals: true ."

a1i := db proofs first vcopy .

self assert: a1i name equals: 'a1i' .
self assert: a1i essentialHypoths size equals: 1 .
self assert: a1i essentialHypoths first name equals: 'a1i.1' .

a1i setAllVariablesToFixed .

self assert: axmp variables asArray second isFreeVar equals: true .

self assert: ( axmp canMapTo: a1i) equals: true .

self assert: axmp variables asArray second isFreeVar equals: false .

self assert: axmp variables asArray second isMappedVar equals: true .
"
self assert: ( axmp canMapTo: a1i) equals: true ."

ax1 setAllVariablesToFixed .
"
self assert: ( axmp canMapTo: ax1 ) equals: false ."

self assert: ( axmp essentialHypoths second canMapTo: ax1 ) equals: true.

"
self assert: ( axmp canMapTo: ax1) equals: false ."

"
self assert: ( ax canMapTo: self axMpFirst) equals: true ."

"
self assert: ( self axMpFirst canMapTo: ax  ) equals: true ."

^ axmp essentialHypoths second "variables asArray second" 
