accessing
open
<gtExample>

	level := 11 .
	level := 110 .

	aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GtMetamath'.

	aSpace root background: Color veryVeryDarkGray.
	
"	aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i'))."

"aSpace addChild: (MmMainBoard new openSolveOn2: (Database allProofs asArray at: level))."

aSpace addChild: Database proofs third vcopy "reparse" openOnMainBoard .
	
	"openOn: levels next" 
	
	"(aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i')))."
	
	self addRightClickMenu .
	
	aSpace show.
	