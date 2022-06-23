accessing
addUsableThingsLists
| usableTurnstiles usableWFFs aEventListener el wffPane wffScroll anAccordion tPane tScroll anAccordiont anAccordionw |
usableTurnstiles := proofToDo eHypoths . 
usableWFFs := OrderedCollection new.
proofToDo assertionsUsed reverseDo: [ :each | | thing |
	
	"each name = 'mp2' ifTrue: [ self halt ]." "self halt."
	
	"thing :=" "controller universe assertionNamed:" "ProofDict at: each copyAndClean"  .
	
	thing := proofToDo prevAssertions at: each .

	thing body isWFF ifTrue: [
			usableWFFs add: thing .

	] ifFalse: [ 
	
		"blah hasEhypoths ifFalse: [ blah setAllVariablesToFixed . ] ."
	
		thing setAllVariablesToFree.
				
		usableTurnstiles add: thing .	
				
	]. 
] .

"wffPane := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent .
	c vertical fitContent 
];
background: BlTransparentBackground new;
layout: BlLinearLayout horizontal .				

usableWFFs do: [ :ea | 

	aEventListener := MmListUsableEventListener new gameController: controller  .
	el := ea elementForStartingList addEventHandler: aEventListener .
	(el background: Color lightGray).
	wffPane addChild: el .

].

wffScroll := BrScrollPane new
		look: MmScrollPaneLook + MmScrollbarLook .
wffScroll content: wffPane .

anAccordionw := BrAccordion new.
	anAccordionw hMatchParent; vFitContent.

	anAccordionw look: BrGlamorousAccordionLook new.
	anAccordionw header: [
		BrButton new
			look: BrGlamorousAccordionHeaderLook new;
			label: 'wffs';
			action: [ anAccordionw toggle ] ].
	anAccordionw content: [
		wffScroll.	
	]."
	

"self addChild: anAccordion ."


tPane := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent "matchParent" .
	c vertical fitContent "matchParent"
];
background: BlTransparentBackground new;
layout: BlLinearLayout horizontal .				

usableTurnstiles do: [ :ea | 

	aEventListener := MmListUsableEventListener new gameController: controller  .
	el := ea elementForStartingList addEventHandler: aEventListener .
	"el background: Color lightGray."
	tPane addChild: el .

].

"tScroll := BrScrollPane new
		look: MmScrollPaneLook + MmScrollbarLook .
tScroll content: tPane ."


self addChild: tPane .

"anAccordiont := BrAccordion new.
	anAccordiont hMatchParent; vFitContent.

	anAccordiont look: BrGlamorousAccordionLook new.
	anAccordiont header: [
		BrButton new
			look: BrGlamorousAccordionHeaderLook new;
			label: 'provables';
			action: [ anAccordiont toggle ] ].
	anAccordiont content: [
		tScroll.	
	].
anAccordiont toggle ."
	
"anAccordion := BrAccordion new.
	anAccordion hMatchParent; vFitContent.

	anAccordion look: BrGlamorousAccordionLook new.
	anAccordion header: [
		BrButton new
			look: BrGlamorousAccordionHeaderLook new;
			label: 'usables';
			action: [ anAccordion toggle ] ].
	anAccordion content: [
		(BrVerticalPane new addChildren: { anAccordiont. anAccordionw })
	].
	
self addChild: anAccordion .
anAccordion toggle "