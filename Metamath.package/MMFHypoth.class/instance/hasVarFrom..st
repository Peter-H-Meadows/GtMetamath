as yet unclassified
hasVarFrom: pvars

"vars := body flatCollect: [ :ea | ea setLevel: 1 ] .
^ vars includesAny: li"

^ self localVariableNames includesAny: pvars