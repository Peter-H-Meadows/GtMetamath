accessing
open2
<gtExample>

	| morph |
	aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GtMetamath'.

	aSpace root background: Color veryVeryDarkGray.

"aSpace addChild: 
((Metamath at: 'syl') reparse setAllVariablesToFixed gameElementWithEhypoths)."


	aSpace show.
	morph := MmMainBoard2 new openOn: (Database allProofs at: 'syl') .
	aSpace addChild: morph.
	
	morph solve .
	
	"self addRightClickMenu ."
	
	