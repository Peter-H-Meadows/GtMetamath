accessing
bvDeepCopyWith: copier
	
	body := body vDeepCopyWith: copier.
	essentialHypoths := essentialHypoths collect: [:ea | ea vDeepCopyWith: copier]