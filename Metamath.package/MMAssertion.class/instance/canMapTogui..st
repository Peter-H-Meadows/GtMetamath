deprecated
canMapTogui: thing

| aSpace mainBox |
body size = thing body size ifFalse: [ ^ false ] .

	aSpace := BlSpace new
		extent: 600@600;
		title: 'metamath'.
	
	"aSpace root background: self spaceBackground."

	"aSpace root addEventHandler:
			(BlEventHandler
				on: BlDoubleClickEvent
				do: [ :evt | BlElementSelection on: evt target ])."
	
	aSpace show .

mainBox := BlElement new .

mainBox constraintsDo: [ :c | 
					c horizontal fitContent.
					c vertical fitContent ];
		"padding: (BlInsets all: 2);"
		margin: (BlInsets left: 18) ;
		layout: BlLinearLayout vertical   .

aSpace root addChild: mainBox .

mainBox addChild: self blocElement .
mainBox addChild: thing blocElement .

body with: thing body do: [ :eame :eastuff | ( eame canMapTogui: eastuff ) ifFalse: [ ^ false ] ] .

^ true .

