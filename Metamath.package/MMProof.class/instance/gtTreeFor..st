accessing
gtTreeFor: aView
	<gtView>
	
	^ aView mondrian
		title: 'Tree';
		priority: 2000;
		painting: [ :aMondrian | self paintTreeWith: aMondrian ]