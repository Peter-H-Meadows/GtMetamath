adding
addToWorkingBoard: assertion

| usable el aPullable aContainer |
"usable := assertion copy .
assertion clean .
usable setAllVariablesToFree ."

"if it has no ehypoths, add to right section. "

"assertion clean ."

usable := assertion copyAndClean .

"self addToList: usable ."

"workingOnList" 

mainWorkspace addChild: ((usable assertionAndEssentialHypothesisElement: controller) addEventHandler: BlPullHandler new allowOutOfBounds ).

	"aPullable := BlElement new
		border: (BlBorder paint: Color lightGray width: 2);
		background: Color veryLightGray;
		size: 100@100;
		addEventHandler: BlPullHandler new allowOutOfBounds.
		
	aContainer := BlElement new
		background: Color veryVeryLightGray;
		size: 400@300;
		addChild: aPullable.

self addChild: aContainer."

"el := usable assertionAndEssentialHypothesisElement: controller .

self  addMiddleThing: el ."

