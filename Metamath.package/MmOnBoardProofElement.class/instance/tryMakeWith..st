accessing
tryMakeWith: mod
| el |
 mod isEhypoth ifTrue: [ ^ self ] .

"selectedUsableElement all removeFromParent ."

el := mod pcopy assertionAndEssentialHypothesisElement: controller .

self addChildFirst: el .

el model canMapTo: model.