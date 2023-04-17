accessing
tryMakeEhypothsWith: inp
| sc aa bb nn xx |
	
	bb := OrderedCollection new.
	
	"inp do: [ :eachAssertion |"
	
		"self halt."
	
		"sc := self vcopy .
		
		sc essentialHypoths first canMapTo: inp second ."
		
		"bb add: sc vcopy" "owner" .
		
		self halt.
		
		nn := self vcopy .
		nn   essentialHypoths second canMapTo: inp third .
		
		xx := self vcopy .
		
		xx essentialHypoths second canMapTo: nn .
		
		
		bb add: xx .
		
		bb add: nn .
		
		"nn := self vcopy .
		nn   essentialHypoths second canMapTo: inp second .
		bb add: nn ."
		
		"aa := { sc essentialHypoths first  } select: [ :ea | 
			
			eachAssertion canMapTo: ea ] .
	
		bb addAll: (aa collect: #owner) .
	
	]."
	
	^ bb
"^ a select: [ :ea | essentialHypoths first canMapTo: ea ]"