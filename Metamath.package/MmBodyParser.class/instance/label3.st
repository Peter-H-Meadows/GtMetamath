accessing
label3
	"^ #space asPParser negate plus flatten trim"
	^ 'ph' asPParser "trim"
		==> [ :x | MmFreeVariable new name: 'ph' ]