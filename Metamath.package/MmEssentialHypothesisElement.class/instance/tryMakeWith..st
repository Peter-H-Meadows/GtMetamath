as yet unclassified
tryMakeWith: mod
| el |

self halt .

"usable el could be: 
ehypoth from proof were doing,
assertion from list,
assertion on board.

make sure it;s not in the same thing."

"parent parent = selectedUsableElement parent ifTrue: [ self error . ^ self ] ."

"we are ehypoth. usable could be proof,hypoth,assertion.."

"only remove if .."

"selectedUsableElement all removeFromParent ."

"add as trying thing"

"self addChildFirst: selectedUsableElement ."

"selectedUsableElement model canMapTo: model."

"el := mod pcopy assertionAndEssentialHypothesisElement: controller .
self addChildFirst: el .
model canMapTo: el model."

el := mod pcopy assertionAndEssentialHypothesisElement: controller .
self addChildFirst: el .
el model canMapTo: model.

"el model canMapTo: model."
