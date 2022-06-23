example
axmpMapToa1i
<gtExample>

| axmp a1i |
axmp := self axMpFirst .

a1i := self a1i .

self assert: (axmp canMapTo: a1i) equals: true .

self assert: axmp localVariables anyOne isMapped equals: true .

^ axmp