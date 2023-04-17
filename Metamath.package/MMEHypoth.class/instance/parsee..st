accessing
parsee: p
	body  := p  parse: rawString .
	body owner: self .