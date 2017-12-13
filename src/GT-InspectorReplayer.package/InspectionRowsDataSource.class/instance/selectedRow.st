accessing
selectedRow
	self
		assert: [ self hasSelectedRow ]
		description: [ 'Can not access selected row if it does not exist' ].

	^ selectedRow