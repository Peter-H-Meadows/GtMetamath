accessing
tryMakeWithElAnime: el 

| animation dum diff |

"we r an ehypoth element  of ax-mp . try to map to AssertionAndEssentialHypothesisElement "
"animate el moving into me. then (model canMapTo:  el model)"

dum := BlElement new size: el size .
dum background: BlTransparentBackground new.
self addChildFirst: dum .

"1 seconds asDelay wait."

diff := dum positionInSpace - el positionInSpace.

"self halt ."

animation := BlTransformAnimation new.
	animation transform
		translateBy: diff ;
		apply. 
		
		animation onFinishedDo: [ 
		
			"1 seconds asDelay wait."
			
			dum removeFromParent .
			el removeFromParent .
			el transformation: el defaultTransformation .
			self addChildFirst: el .	
				
				1 seconds asDelay wait.
				
			(model canMapTo: el model) ifFalse: [ self background: Color red ].
			
			model isComplete ifTrue: [ self background: Color veryDarkGray ].

			"self background:
			((model canMapTo:  el model) ifTrue: [Color green] ifFalse: [Color red])."
			
			"el model canMapTo: model."
	 ].
		
el addAnimation: animation .

"1 seconds asDelay wait."

"self halt ."
