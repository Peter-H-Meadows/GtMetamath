opening/closing
openInWindow: anElement 
	| aSpace |
	aSpace := BlSpace new
		extent: 400@600;
		title: 'mm'.
	
	"aSpace root background: Color darkGray ."
	aSpace root addChild: anElement.

	aSpace show