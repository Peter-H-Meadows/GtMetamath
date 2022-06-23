accessing
tryMakeFromOnBoardeHypothEl: el 

| animation dum diff |
"we r an ehypoth element  of ax-mp . try to map to onBoardehypoth (fixed)"


self halt .
			
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
			el transformation: (el defaultTransformation "owner: el") .
			self addChildFirst: el .			
			
			"self halt ."
			
		"ion := BlTransformAnimation new.
		animation transform
		translateBy: diff negated ;
		apply. el addAnimation: ion."

			"self halt ."

			self background:
			((model canMapTo:  el model) ifTrue: [Color green] ifFalse: [Color red]).
	 ].
		
el addAnimation: animation .

"1 seconds asDelay wait."

"self halt ."

