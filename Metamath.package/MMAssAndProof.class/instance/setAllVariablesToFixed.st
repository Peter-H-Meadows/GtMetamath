initialization
setAllVariablesToFixed

varObs valuesDo: [ :ea | ea setAsFixed "becomeForward: (MmFixedVar new name: ea name)" ]
"self allVariables do: #setFixed"