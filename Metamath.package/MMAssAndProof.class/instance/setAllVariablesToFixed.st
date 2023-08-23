initialization
setAllVariablesToFixed
	isComplete := true.
	
	
	self variables do: #setFixed .
	
	"varDict2
		valuesDo: [  
			:ea | ea setAsFixed	
			becomeForward: (MmFixedVar new name: ea name) ]"