accessing
tryMakeWithEl: el 

	el removeFromParent .
	
	"el could be ehypoth or assertion result"
	
	"ehypel := MmOnBoardEssentialHypothesisElement new model: el model copy ."
		
	el model isEhypoth ifFalse: [self addChildFirst: el .] .
			
	""
	
	"self halt."
		
	model canMapTo: el model .
	
	
	
	"ifFalse: [ 
			 
			self border: (BlBorder paint: Color red width: 4 ). 
		]."
		
"model isComplete ifTrue: [ self background: Color veryDarkGray ]."
		
"check if owner is complete"

"self background:
((model canMapTo:  el model) ifTrue: [Color green] ifFalse: [Color red])."
			
"el model canMapTo: model."
"self background: Color red"		
"1 seconds asDelay wait."

"self halt ."
