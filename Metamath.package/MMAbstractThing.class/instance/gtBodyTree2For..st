accessing
gtBodyTree2For: aView
	<gtView>
	^ aView mondrian
		title: 'body tree';
		painting: [ :aMondrian | body paintTreeWith: aMondrian ]