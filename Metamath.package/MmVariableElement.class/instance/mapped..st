mapping
mapped: ann 

"blob border: ( BlBorder paint: Color black width: 4 )."

lineElement := BlElement new
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical exact: 1 ];
		background: Color lightGray .

self addChild: lineElement .

self addChild: ann mappedTo gameElement.
