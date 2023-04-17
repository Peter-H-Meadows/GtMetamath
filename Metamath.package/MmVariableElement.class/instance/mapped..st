mapping
mapped: ann 

"blob border: ( BlBorder paint: Color black width: 4 )."

"self removeChildren ."

lineElement := BlElement new
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical exact: 2 ];
		background: Color lightGray .

self addChild: lineElement .

self addChild: ann mappedTo gameElement.
