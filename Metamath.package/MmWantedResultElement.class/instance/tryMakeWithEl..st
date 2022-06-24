accessing
tryMakeWithEl: el 

el removeFromParent .
self addChildFirst: el .	
				
			"1 seconds asDelay wait."
				
model canMapTo: el model.

			") ifFalse: [ self background: Color red ]."
			
			"1 seconds asDelay wait."
			"
			model isComplete ifTrue: [ self background: Color veryDarkGray ]."