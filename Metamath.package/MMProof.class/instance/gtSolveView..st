accessing
gtSolveView: aView
	<gtView>
	^ aView mondrian
		title: 'solve';
		painting: [ :aMondrian | self paintSolveWith3: aMondrian ]