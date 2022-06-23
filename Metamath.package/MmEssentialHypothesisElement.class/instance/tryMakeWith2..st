as yet unclassified
tryMakeWith2: mod
| el |

self halt .

mod isEhypoth ifTrue: [  
	el := mod assertionAndEssentialHypothesisElement: controller .
] ifFalse: [  
	el := mod copyAndClean assertionAndEssentialHypothesisElement: controller .
] .

self addChildFirst: el .

model canMapTo: el model.
