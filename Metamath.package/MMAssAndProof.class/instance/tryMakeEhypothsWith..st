accessing
tryMakeEhypothsWith: inp
| sc aa bb |
	
	bb := OrderedCollection new.
	
	inp do: [ :fin |
	
		sc := self vcopy .
		
		aa := sc essentialHypoths select: [ :ea | 
			self halt.
			fin canMapTo: ea ] .
	
		bb addAll: (aa collect: #owner) .
	
	].
	
	^ bb
"^ a select: [ :ea | essentialHypoths first canMapTo: ea ]"