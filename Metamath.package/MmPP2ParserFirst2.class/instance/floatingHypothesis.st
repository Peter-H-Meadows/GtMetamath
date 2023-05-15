generated
floatingHypothesis

	| pf |
	^ label , '$f' asPParser trim ,
	#word asPParser plus flatten trim , #word asPParser plus  flatten trim "label , label" "#any asPParser starLazy flatten"
	  , '$.' asPParser trim ==> [ :x | 
	  
	  "self halt ."
	  
	  (x third = 'wff') ifTrue: [
	  	pf := x fourth asPParser trim .
	  	"Bp wffdel child: Bp wffdel child / pf ."
	  	
	  	WffPP child ifNil: [ WffPP child: pf ] ifNotNil: [
	  	WffPP child: WffPP child / pf .]
	  ] ifFalse: [
	   	self halt .
	  
	  ] .
	  
	  MMFHypoth new
		  name: x first;
		  rawString: x third ]