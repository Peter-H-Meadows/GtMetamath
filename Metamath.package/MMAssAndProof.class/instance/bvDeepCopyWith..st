accessing
bvDeepCopyWith: copier
	
	| dd |
	body := body vDeepCopyWith: copier.
	essentialHypoths := essentialHypoths collect: [:ea | ea vDeepCopyWith: copier].
	
	dd := Dictionary new .
	
	varObs keysAndValuesDo: [:k :v | dd at: k put: (v vDeepCopyWith: copier) ] .
	
	varObs := dd .