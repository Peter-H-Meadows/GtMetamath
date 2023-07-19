accessing
bvDeepCopyWith: copier

	announcer := Announcer new.

	usedFor := nil .
	
	body := body vDeepCopyWith: copier.
	
	"owner := owner vDeepCopyWith: copier."