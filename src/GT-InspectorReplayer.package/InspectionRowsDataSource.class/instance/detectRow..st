adding
detectRow: aBlock
	self rows detect: aBlock ifFound: [ :row | ^ row ]
		ifNone: [ self error: 'Could not find row.' ]