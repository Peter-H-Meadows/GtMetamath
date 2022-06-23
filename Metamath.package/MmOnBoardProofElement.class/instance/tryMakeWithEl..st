accessing
tryMakeWithEl: el 
el removeFromParent .
self addChildFirst: el .
model canMapTo: el model.

			"self background:
			((model canMapTo: el model) ifTrue: [Color green] ifFalse: [Color red] )."
			
"1 seconds asDelay wait."

"self halt ."
