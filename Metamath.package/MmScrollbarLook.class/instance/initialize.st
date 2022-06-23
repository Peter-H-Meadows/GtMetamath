initialization
initialize

	super initialize.

	scrollbar := BrScrollbar new beHorizontal
		             aptitude: BrScrollbarAptitude new;
		             thumb:
			             (BrScrollbarThumb new aptitude:
					              BrGlamorousScrollbarThumbAptitude new);
		             track:
			             (BrScrollbarTrack new aptitude:
					              BrGlamorousScrollbarTrackAptitude new);
		             constraintsDo: [ :c | 
			             c ignoreByLayout.
			             c margin: (BlInsets top: 2).
			             c ignored vertical alignTop ].

	self
		addChangeAddChildAs: #( content horizontalScrollbar )
		with: [ scrollbar scrollable: (self widget childNamed: #scrollable) ]