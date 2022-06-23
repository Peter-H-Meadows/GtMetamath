accessing
model: assertion 

"add ehypoths to left container"

| mand  el |

self error .

model := assertion .

el := assertion gameElement constraintsDo: [ :c | c linear vertical  alignCenter ] .

model eHypoths reverse do: [ :ea | 
	
	mand := ea gameElement .
	
	mand constraintsDo: [ :c | c linear horizontal  alignCenter ].
	
	hypothBox addChild: mand
	
] .

self addChild: el.