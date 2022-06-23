accessing
mandFhypoths


mandFhypoths := allFhypoths collect: [ :ea | ea hasVarFrom: vars  ] .

^ mandFhypoths