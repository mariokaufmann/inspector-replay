row management
deselectRow: aRow
	self hasSelectedRow
		ifFalse: [ ^ self ].
		
	self selectedRow == aRow
		ifFalse: [ ^ self ].

	selectedRow selected: false.
	selectedRow := nil.
	self rowUpdated: aRow