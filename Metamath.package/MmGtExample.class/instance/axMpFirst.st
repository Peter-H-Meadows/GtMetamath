example
axMpFirst
<gtExample>

| axmp |
axmp := (self metamathUniverse assertionNamed: 'ax-mp') copy .

self assert: axmp name equals: 'ax-mp' .

self assert: axmp mands size equals: 4 .
self assert: axmp essentialHypoths size equals: 2 .

self assert: axmp mands first name equals: 'maj' .

self assert: axmp mands second name equals: 'min' .

self assert: axmp localVariableNames equals: { 'ps' } asSet .

self assert: axmp hypothVariableNames equals: { 'ph' . 'ps' } asSet .

^ axmp
