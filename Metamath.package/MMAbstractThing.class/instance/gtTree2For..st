accessing
gtTree2For: aView
	<gtView>
	^ aView mondrian
		title: 'tree b';
		painting: [ :aMondrian | body paintTreeWith: aMondrian ]