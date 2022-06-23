as yet unclassified
setupMandatoryFloatingHypothesis: allFHypoths

| tmpvars |
tmpvars := self allVariableNames .

"need to replace vars in fhypoths with new ones"

mandFhypoths := allFHypoths select: [ :ea | ea hasVarFrom: tmpvars  ] .

mandFhypoths := mandFhypoths collect: [ :ea | ea copyWithVars: self allVariables ]