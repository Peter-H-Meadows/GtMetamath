example
ax1
<gtExample>

| ax |
ax := (self metamathUniverse assertions second) copy .

self assert: ax name equals: 'ax-1' .
"
self assert: axmp mands size equals: 4 ."
self assert: ax essentialHypoths size equals: 0 .

self assert: ( ax canMapTo: self a1i) equals: false .

self assert: ( ax canMapTo: self axMpFirst) equals: true .

^ ax
