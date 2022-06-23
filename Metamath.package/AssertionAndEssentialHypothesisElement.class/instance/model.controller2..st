accessing
model: assertion controller2: con

"add ehypoths to left container"

| el |

model := assertion .

controller := con .

model eHypoths reverse do: [ :ea | 
	
	"aEventListener := MmOnBoardWantedEventListener new gameController: controller .
	mand := ea gameElement addEventHandler: aEventListener .
	mand constraintsDo: [ :c | c linear horizontal  alignCenter ].
	cont addChild: mand"
	
	hypothBox addChild: (ea gameElementInCont: con pmod: model )  .
	
] .

el := assertion gameElement constraintsDo: [ :cc | cc linear vertical  alignCenter ] .
"aEventListener := MmOnBoardUsableEventListener new gameController: con ."
"self addEventHandler: aEventListener ."
self addChild: el.

selectedMarkerElement := BlElement new
		constraintsDo: [ :co |
			co horizontal exact: 8.
			co vertical matchParent ];
		background: ( Color veryDarkGray  ).


self addChild: selectedMarkerElement

