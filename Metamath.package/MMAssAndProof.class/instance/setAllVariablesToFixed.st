initialization
setAllVariablesToFixed

varObs valuesDo: [ :ea | ea becomeForward: (MmFixedVar new name: ea name) ]
"self allVariables do: #setFixed"