adding
addToBoard: assertion

| usable el |

self error .

usable := assertion copy .
assertion clean .

"if it has no ehypoths, add to right section. "

el := usable assertionAndEssentialHypothesisElement: controller .

usable hasEhypoths ifTrue: [  
	self  addMiddleThing: el .
] ifFalse: [  
	self addBasicUsableThing: el
] . 
