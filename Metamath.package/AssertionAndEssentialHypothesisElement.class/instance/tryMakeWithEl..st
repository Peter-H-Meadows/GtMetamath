as yet unclassified
tryMakeWithEl: el 

	"el could be ehypoth or assertion result"
	
	"ehypel := MmOnBoardEssentialHypothesisElement new model: el model copy ."
		
	el model isEhypoth ifFalse: [
		"el removeFromParent .
		self addChildFirst: el ."
	] .
	
	"self halt."
		
	model canMapTo: el model .