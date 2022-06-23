private - hooks
onScrollBy: aScrollByWish
	aScrollByWish smooth
		ifTrue: [ scrollable smoothScrollBy: aScrollByWish delta ]
		ifFalse: [ scrollable scrollBy: aScrollByWish delta ]