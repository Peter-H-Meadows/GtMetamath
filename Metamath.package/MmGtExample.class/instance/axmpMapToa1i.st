example
axmpMapToa1i
<gtExample>

| axmp a1i ph ps |
axmp := self axMpFirst copy .

a1i := self a1i copy setAllVariablesToFixed .

"self assert: (a1i canMapTo: axmp) equals: true ."


self assert: ( axmp canMapTo: a1i) equals: true .


ph := axmp varObs asArray first .

self assert: ( ph name) equals: 'ph' .

ps := axmp varObs asArray second .


self assert: ( ph isFreeVar ) equals: true .

self assert: ( ps  isFreeVar ) equals: false .

self assert: ( ps isMappedVar ) equals: true .

"self assert: axmp localVariables anyOne isMapped equals: true ."

^ axmp varObs