accessing
model: assertion controller: con

| el aEventListener erElement |

self error .

model := assertion .

controller := con .

model eHypoths reverse do: [ :ea | 
	
	hypothBox addChild: (ea gameElementInCont: con pmod: model )  .
	
] .

erElement := BlElement new
		constraintsDo: [ :co |
			co horizontal exact: 1.
			co vertical matchParent ];
		background: Color veryDarkGray .

self addChild: erElement.

el := assertion gameElement constraintsDo: [ :cc | cc linear vertical  alignCenter ] .
aEventListener := MmOnBoardUsableEventListener new gameController: con .
self addEventHandler: aEventListener .
self addChild: el.

selectedMarkerElement := BlElement new
		constraintsDo: [ :co |
			co horizontal exact: 8.
			co vertical matchParent ];
		background: BlTransparentBackground new.

self addChild: selectedMarkerElement.
