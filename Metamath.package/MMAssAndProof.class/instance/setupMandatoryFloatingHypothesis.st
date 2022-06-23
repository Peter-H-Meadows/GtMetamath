as yet unclassified
setupMandatoryFloatingHypothesis

fHypoths := self allVariables asArray collect: [ :ea | MMFHypoth new createFrom: ea ] .