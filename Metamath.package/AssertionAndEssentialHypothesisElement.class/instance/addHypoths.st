adding
addHypoths

model eHypoths reverse do: [ :ea | 
	
	hypothBox addChild: (ea gameElementInCont: controller  pmod: model )  .
	
] .