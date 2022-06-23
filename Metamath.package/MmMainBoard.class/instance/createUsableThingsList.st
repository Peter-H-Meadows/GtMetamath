accessing
createUsableThingsList
"ehypoths and assertions/proofs  that we can click to use and make a wanted thing"
| usableAssertions  aEventListener aPager pp ppx elx spane |

usableAssertions := proofToDo eHypoths . 

"proofToDo assertions collect: [ :ea | ] thenReject: " 

proofToDo assertionsUsed reverseDo: [ :each | | blah |
	
"		each name = 'mp2' ifTrue: [ self halt ]."
	blah := (controller universe assertionNamed: each) copyAndClean .
	
	"blah body isWFF ifTrue: [ self halt ] ."
	
	"blah body isWFF ifFalse: [ " 
	
	
	"blah hasEhypoths ifFalse: [ blah setAllVariablesToFixed . ] ."
	
	"( { 'wi' . 'wn' . 'ax-3' } includes: blah name ) ifFalse: [ "
		
				blah setAllVariablesToFree.
				
				usableAssertions add: blah .
				
			"]."
				
				
	"] . "
] .

"usableList dataSource: (MmUsableDataSource new controller: controller ; proofs: usableThings) ."

"usableEhypoths := proofToDo eHypoths collect: [ :each | topBoard addChild: ( each pcopy usableElement: controller ) ] ."


"aList := BrSimpleList new.
aList stencil: [ :each :index | 
			aEventListener := MmListUsableEventListener new gameController: controller  .
			each elementForStartingList addEventHandler: aEventListener .
]."
			
"aList items: usableAssertions ."
		
"aList when: BrSelectionChanged
			do: [ :anEvent | 
			anEvent
				selectedDo: [ :anInterval | self halt ].
			anEvent
				deselectedDo: [ :anInterval | self halt ] ]."
		
"aList hFitContent ."

aPager := BrPager new. 

pp := (BrButton new
			beHuge; size: 300@100 ;
			look: BrGlamorousButtonWithLabelLook new;
			label: 'Nexxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxt';
			action: [
				aPager addPage: (BrPagerPageElementMM new
					"layout: BlLinearLayout vertical alignCenter;"
					background: (Color random );
					
					addChild: (BrLabel new
						look: (BrGlamorousLabelLook new fontSize: 30; foreground: Color random);
						text: 'New page')).
				aPager scrollToLast ]).


ppx := BlElement new constraintsDo: [ :c | 
	c horizontal fitContent "matchParent" .
	c vertical fitContent "matchParent"
]; "clipChildren: false ;"
background: BlTransparentBackground new;
layout: BlLinearLayout horizontal .				

usableAssertions do: [ :eaaa | 

	aEventListener := MmListUsableEventListener new gameController: controller  .
	elx := eaaa elementForStartingList addEventHandler: aEventListener .
	ppx addChild: elx .
	
	"aPager addPage: (BrPagerPageElementMM new"
		"weight: 0.5;"
		"layout: BlLinearLayout vertical ;"
		"background: (Color random);"
		"mm: ea controller: controller ). "
].



spane := BrScrollPane new
		look: MmScrollPaneLook + MmScrollbarLook .
		
self halt.
	spane content: ppx .
	
^ spane