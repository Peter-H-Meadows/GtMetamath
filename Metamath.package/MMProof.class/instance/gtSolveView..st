accessing
gtSolveView: aView
	<gtView>
	^ aView mondrian
		title: 'Solver';
		painting: [ :aMondrian | self paintSolveWith4: aMondrian ]