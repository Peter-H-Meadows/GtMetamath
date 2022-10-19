accessing
gtSolveView: aView
	<gtView>
	^ aView mondrian
		title: 'exp';
		painting: [ :aMondrian | self paintSolveWith4: aMondrian ]