accessing
tryMakeWit: mod
| el |
	el := mod reparse gameElementWithEhypoths .
	
	el addBoardHandler: mainBoard .
	
	self addChildFirst: el .
	
	"self halt."
	
	model canMapTo: el model .
	