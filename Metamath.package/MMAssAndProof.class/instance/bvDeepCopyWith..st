accessing
bvDeepCopyWith: copier
	
	| dd |
	
	announcer := Announcer new.
	
	Transcript show: 'copying essential hypoyhs' ; cr .
	essentialHypoths := essentialHypoths collect: [:ea | ea vDeepCopyWith: copier].
	
	Transcript show: 'copying body' ; cr .
	body := body vDeepCopyWith: copier.
	
	
	"dd := Dictionary new .
	
	varDict2 keysAndValuesDo: [:k :v | dd at: k put: (v vDeepCopyWith: copier) ] .
	
	varDict2 := dd ."