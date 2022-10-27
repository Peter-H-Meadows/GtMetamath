accessing
gtTreeFor: aView
	"<gtView>"
	^ aView mondrian
		title: 'tree';
		painting: [ :aMondrian | self paintTreeWith: aMondrian ]