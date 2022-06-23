as yet unclassified
allVariableNames

^ (self allVariables deepFlatten collect: [ :ea | ea name ] ) asSet .

