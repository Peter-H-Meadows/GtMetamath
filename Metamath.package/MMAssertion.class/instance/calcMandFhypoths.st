accessing
calcMandFhypoths

mandFhypoths := Array new .

mandFhypoths := allFhypoths select: [ :ea | ea hasVarFrom: vars  ] .