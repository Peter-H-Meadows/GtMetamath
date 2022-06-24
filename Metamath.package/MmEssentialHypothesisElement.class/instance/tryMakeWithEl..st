accessing
tryMakeWithEl: el 

	el removeFromParent .
	
	"el could be ehypoth or assertion result"
	
	"ehypel := MmOnBoardEssentialHypothesisElement new model: el model copy ."
			
	self addChildFirst: el .	
				
	"1 seconds asDelay wait."
				
		(model canMapTo: el model) ifFalse: [ 
			"self background: Color red" 
			self border: (BlBorder paint: Color red width: 4 ). 
		].
			
			"1 seconds asDelay wait."
			"
		model isComplete ifTrue: [ self background: Color veryDarkGray ]."
		
"check if owner is complete"

			"self background:
			((model canMapTo:  el model) ifTrue: [Color green] ifFalse: [Color red])."
			
			"el model canMapTo: model."
			
"1 seconds asDelay wait."

"self halt ."
