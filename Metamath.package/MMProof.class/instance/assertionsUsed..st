accessing
assertionsUsed: a


assertionsUsed := a .

"assertionsUsed := MmDatabaseGlob assertions select: [:ea | a includes: ea name ] ."

"assertionsUsed do: [:ea | 
	ao := MmDatabaseGlob assertionNamed: ea ]"