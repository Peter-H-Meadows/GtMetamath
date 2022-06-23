accessing
calcMandFhypoths: fs

self error .

allFhypoths := fs copy .

mandFhypoths := Array new .

self setVarSyms  .

mandFhypoths := allFhypoths select: [ :ea | ea hasVarFrom: vars  ] .