as yet unclassified
truet
	^ 'T.' asPParser flatten trim 
		==> [ :x | MmFreeVariable new name: x ]