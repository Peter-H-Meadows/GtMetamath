accessing
open2
<gtExample>

	level := 11 .

	aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GtMetamath'.

	aSpace root background: Color veryVeryDarkGray.
	
"	aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i'))."

aSpace addChild: ((Metamath at: 'a1i') reparse setAllVariablesToFixed gameElementWithEhypoths).
	
	"openOn: levels next" 
	
	"(aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i')))."
	
	self addRightClickMenu .
	
	aSpace show.
	