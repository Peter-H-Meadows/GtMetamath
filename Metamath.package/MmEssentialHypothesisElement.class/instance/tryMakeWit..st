accessing
tryMakeWit: mod
| el |
	el := mod reparse gameElementWithEhypoths .
	
	self addChildFirst: el .
	
	self halt.
	
	model canMapTo: el model .
	