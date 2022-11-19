accessing
gtSolveView: aView
	<gtView>
	^ aView mondrian
		title: 'Solver';
		painting: [ :aMondrian | self paintSolveWith5: aMondrian ]