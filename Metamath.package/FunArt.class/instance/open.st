accessing
open
	| aSpace el el2 el3 |
	
	aSpace := BlSpace new
			extent: 1200 @ 600;
			title: 'FunArt'.
			
	"aSpace root background: Color veryVeryDarkGray.
	
	aSpace root layout: (GtGradHorizontalDominanceCenteredTreeLayout new)."
	
	el := FunArtBoard new.
	
	el board: aSpace root .
	
	el2 := BlElement new.
	el2 background: Color blue .
	"el2 constraintsDo: [ :c |
		c frame horizontal weight: 0.5.
		c frame vertical weight: 0.5.
		c frame vertical alignBottom .
		c frame horizontal alignRight]."
	
	"el addChild: el2 .
	
	
	el3 := BlElement new.
	el3 background: Color red .
	
	el2 graph connectTo: el3 .
	
	el addChild: el3 ."
	
	aSpace addChild: el .
	
	
	aSpace show.