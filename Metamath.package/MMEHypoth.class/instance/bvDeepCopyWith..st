accessing
bvDeepCopyWith: copier

	usedFor := nil .
	
	body := body vDeepCopyWith: copier.
	
	owner := owner vDeepCopyWith: copier.