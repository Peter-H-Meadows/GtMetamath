accessing
gtTreeFor: aView
	<gtView>
	^ aView mondrian
		title: '9876';
		painting: [ :aMondrian | self paintTreeWith: aMondrian ]