example
axMpFirst
<gtExample>

| axmp |
axmp := (self metamathUniverse assertions first) copy .

self assert: axmp name equals: 'ax-mp' .
"
self assert: axmp mands size equals: 4 ."
self assert: axmp essentialHypoths size equals: 2 .

self assert: axmp essentialHypoths first name equals: 'min' .

self assert: axmp essentialHypoths second name equals: 'maj' .

"self assert: axmp localVariableNames equals: { 'ps' } asSet .

self assert: axmp hypothVariableNames equals: { 'ph' . 'ps' } asSet ."

^ axmp
