initialization
setAllVariablesToFixed

varDict2 valuesDo: [ :ea | ea setAsFixed "becomeForward: (MmFixedVar new name: ea name)" ]
"self allVariables do: #setFixed"