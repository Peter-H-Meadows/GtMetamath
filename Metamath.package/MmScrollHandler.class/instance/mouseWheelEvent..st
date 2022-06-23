accessing
mouseWheelEvent: anEvent
	| aScrollHappened |
	
	"I implement touch support, so ignore fake mouse wheel events"
	anEvent isTouch
		ifTrue: [ ^ self ].

	aScrollHappened := anEvent currentTarget scrollBy: ((anEvent vector * 20) y)@0 "(anEvent vector * 20) negated".
	anEvent consumed: aScrollHappened