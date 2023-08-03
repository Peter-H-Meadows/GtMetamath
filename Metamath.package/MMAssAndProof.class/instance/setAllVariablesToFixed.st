initialization
setAllVariablesToFixed
	isComplete := true.
	varDict2
		valuesDo: [  "self allVariables do: #setFixed"
			:ea | ea setAsFixed	
			"becomeForward: (MmFixedVar new name: ea name)" ]