as yet unclassified
label
	"^ #space asPParser negate plus flatten trim"
	^ #word asPParser plus flatten trim
	"^ 'ch' asPParser  flatten trim"
		==> [ :x | MmFreeVariable new name: x ]